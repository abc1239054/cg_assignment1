// Assignment 1, Part 4
//
// Modify this file.
//

#include "utils.h"
#include "utils2.h"

#include <GL/glew.h>
#include <GLFW/glfw3.h>

#include <imgui.h>
#include <imgui_impl_glfw_gl3.h>

#define GLM_FORCE_RADIANS
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include <iostream>
#include <cstdlib>
#include <string>

// The attribute locations we will use in the vertex shader
enum AttributeLocation {
    POSITION = 0,
    COLOR = 1
};

// Struct for resources
struct Context {
    int width;
    int height;
    float aspect;
    GLFWwindow *window;
    GLuint program;
    GLuint triangleVAO;
    GLuint positionVBO;
    GLuint colorVBO;
    GLuint defaultVAO;
    GLuint EBO;
    Trackball trackball;
    //GLfloat *vertices;
    //GLint *indices;
    float zoom_scale = 45.0f;
    int meshResolution = 20;
    int size = meshResolution * meshResolution * 2 * 3 * 3;
    int seed = time(0);
};

// Returns the value of an environment variable
std::string getEnvVar(std::string const& name)
{
    char const* value = getenv(name.c_str());
    if (value == nullptr) {
        return std::string();
    }
    else {
        return std::string(value);
    }
}

// Returns the absolute path to the shader directory
std::string shaderDir(void)
{
    std::string rootDir = getEnvVar("ASSIGNMENT1_ROOT");
    if (rootDir.empty()) {
        std::cout << "Error: ASSIGNMENT1_ROOT is not set." << std::endl;
        exit(EXIT_FAILURE);
    }
    return rootDir + "/part4/src/shaders/";
}

GLfloat getNoise(float x, float z, int seed){
    srand(int(29809* abs(x) + 19809 * abs(z)) + seed);
    return (0.8 - 0.2) * rand() / (RAND_MAX + 1.0) + 0.5;
}


GLfloat randomHeight(float x, float z, int seed){
    float divider = 1.0f / 20;
    float corners = (getNoise(x-divider, z-divider, seed) + getNoise(x+divider, z-divider, seed) + getNoise(x-divider, z+divider, seed) + getNoise(x+divider, z+divider, seed)) / 16.0f;
    float sides = (getNoise(x+divider, z, seed) + getNoise(x-divider, z, seed) + getNoise(x, z+divider, seed) + getNoise(x, z-divider, seed)) / 8.0f;
    float center = getNoise(x, z,seed) / 4.0f;
    return corners + sides + center;
}

GLfloat* generateVertices(Context &ctx){
    int verticesSize = (ctx.meshResolution + 1) * (ctx.meshResolution + 1) * 3;
    GLfloat* vertices = new GLfloat[verticesSize]();

    float startX = -0.5f;
    float startZ = 0.5f;
    double triangleWidth = (startZ - startX) / ctx.meshResolution;
    
    float x = 0;
    float x2 = 0;
    float z = 0;
    float z2 = 0;
    int index = 0;
    //For each row
    for (int r = 0; r <= ctx.meshResolution; r++) {
        //For each column
        for (int c = 0; c <= ctx.meshResolution; c++) {

            x = startX + c*triangleWidth;
            x2 = startX + (c+1)*triangleWidth;
            z = startZ - r*triangleWidth;
            z2 = startZ -(r+1)*triangleWidth;
            //Generate one vertex
            vertices[index++] = x;
            vertices[index++] = randomHeight(x, z, ctx.seed);
            vertices[index++] = z;
            printf("*** %f %f %f\n", vertices[index-3], vertices[index-2], vertices[index-1]);
        }
    }

    return vertices;
}

GLint* generateIndices(Context &ctx){
    int size = ctx.meshResolution * ctx.meshResolution * 2 * 3;
    GLint* indices = new GLint[size]();
    int index = 0;
    for (int r = 0; r < ctx.meshResolution; r++) {
        //For each column
        for (int c = 0; c < ctx.meshResolution; c++) {
            int currentIndex = (ctx.meshResolution + 1) * r + c;
            indices[index] = currentIndex; 
            indices[index + 1] = currentIndex + ctx.meshResolution + 1;
            indices[index + 2] = currentIndex + 1;
            indices[index + 3] = currentIndex + 1;
            indices[index + 4] = currentIndex + 1 + ctx.meshResolution;
            indices[index + 5] = currentIndex + 1 + ctx.meshResolution + 1;            
            index += 6;
        }
    }
    return indices;
}

void createTriangle(Context &ctx)
{
    

    GLfloat *positions = generateVertices(ctx);
    GLint *indices = generateIndices(ctx);
    
    //Set buffers
    //glGenBuffers(1, &ctx.positionVBO);
    //glBindBuffer(GL_ARRAY_BUFFER, ctx.positionVBO);
    //glBufferData(GL_ARRAY_BUFFER, sizeof(GLfloat) * ctx.size, positions, GL_STATIC_DRAW);

    //glGenVertexArrays(1, &ctx.triangleVAO);
    //glBindVertexArray(ctx.triangleVAO);

    glGenBuffers(1, &ctx.positionVBO);
    glGenBuffers(1, &ctx.EBO);
    
    glBindBuffer(GL_ARRAY_BUFFER, ctx.positionVBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(float)*(ctx.meshResolution+1)*(ctx.meshResolution+1)*3, positions, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ctx.EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(int)*ctx.meshResolution*ctx.meshResolution*2*3, indices, GL_STATIC_DRAW);

    glEnableVertexAttribArray(POSITION);
    glVertexAttribPointer(POSITION, 3, GL_FLOAT, GL_FALSE, 0, nullptr);
    glBindBuffer(GL_ARRAY_BUFFER, 0); // unbind the VBO

    glBindVertexArray(ctx.defaultVAO); // unbind the VAO

    //Draw
    //glDrawArrays(GL_TRIANGLES, 0, ctx.meshResolution*ctx.meshResolution*2*3);
    
    
    
    
    /*
    // Creates a vertex array object (VAO) for the triangle
    glGenVertexArrays(1, &ctx.triangleVAO);
    glBindVertexArray(ctx.triangleVAO);


    const GLfloat vertices[] = {
    -1.0f, 1.0f, 0.0f,    //   o
    -1.0f, -1.0f, 0.0f,  //  /|
    1.0f, 1.0f, 0.0f,    // o-o
    1.0f, 1.0f, 0.0f,   // o-o
    -1.0f, -1.0f, 0.0f,  // |/
    1.0f, -1.0f, 0.0f     // o
    };
    glGenBuffers(1, &ctx.positionVBO);
    glBindBuffer(GL_ARRAY_BUFFER, ctx.positionVBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);


    
    // Generates the three vertices defining the triangle and puts them
    // in a vertex buffer object (VBO)
    const GLfloat vertices[] = {
    0.8f, 0.8f, 0.0f,   // top-right
    0.8f, -0.8f, 0.0f,  // bottom-right
    -0.8f, -0.8f, 0.0f, // bottom-left
    -0.8f, 0.8f, 0.0f,  // top-left
    };
    const GLuint indices[] = {
        0, 1, 3,
        1, 2, 3
    };

    glGenBuffers(1, &ctx.positionVBO);
    glGenBuffers(1, &ctx.EBO);
    
    glBindBuffer(GL_ARRAY_BUFFER, ctx.positionVBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ctx.EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
    
    glEnableVertexAttribArray(POSITION);
    glVertexAttribPointer(POSITION, 3, GL_FLOAT, GL_FALSE, 0, nullptr);
    glBindBuffer(GL_ARRAY_BUFFER, 0); // unbind the VBO

    glBindVertexArray(ctx.defaultVAO); // unbind the VAO
    */
}

void drawTriangle(Context &ctx)
{

    // Define uniforms
    glm::mat4 model = trackballGetRotationMatrix(ctx.trackball);
    glm::mat4 view = glm::lookAt(
        glm::vec3(0,10,5), // Camera is at (3,3,3), in World Space
        glm::vec3(0,0,0), // and looks at the origin
        glm::vec3(0,1,0)  // Head is up (set to 0,-1,0 to look upside-down)
    );
    glm::mat4 projection = glm::perspective(glm::radians(ctx.zoom_scale), (float) ctx.width / (float)ctx.height, 0.1f, 100.0f);
    glm::mat4 mv = view * model;
    glm::mat4 mvp = projection * mv;

    glUseProgram(ctx.program);

    // Pass uniforms
    glUniformMatrix4fv(glGetUniformLocation(ctx.program, "u_mv"), 1, GL_FALSE, &mv[0][0]);
    glUniformMatrix4fv(glGetUniformLocation(ctx.program, "u_mvp"), 1, GL_FALSE, &mvp[0][0]);
    

    glBindVertexArray(ctx.triangleVAO);

    //glDrawArrays(GL_TRIANGLES, 0, ctx.meshResolution*ctx.meshResolution*2*3);
    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    glDrawElements(GL_TRIANGLES, ctx.meshResolution*ctx.meshResolution*2*3, GL_UNSIGNED_INT, 0);
    //glUseProgram(0);
}


void display(Context &ctx)
{
    glClearColor(0.0, 0.0, 0.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    drawTriangle(ctx);
}

void reloadShaders(Context *ctx)
{
    glDeleteProgram(ctx->program);
    ctx->program = loadShaderProgram(shaderDir() + "triangle.vert",
                                     shaderDir() + "triangle.frag");
}

void initializeTrackball(Context &ctx)
{
    double radius = double(std::min(ctx.width, ctx.height)) / 2.0;
    ctx.trackball.radius = radius;
    glm::vec2 center = glm::vec2(ctx.width, ctx.height) / 2.0f;
    ctx.trackball.center = center;
}

void mouseButtonPressed(Context *ctx, int button, int x, int y)
{
    if (button == GLFW_MOUSE_BUTTON_LEFT) {
        ctx->trackball.center = glm::vec2(x, y);
        trackballStartTracking(ctx->trackball, glm::vec2(x, y));
    }
}

void mouseButtonReleased(Context *ctx, int button, int x, int y)
{
    if (button == GLFW_MOUSE_BUTTON_LEFT) {
        trackballStopTracking(ctx->trackball);
    }
}

void moveTrackball(Context *ctx, int x, int y)
{
    if (ctx->trackball.tracking) {
        trackballMove(ctx->trackball, glm::vec2(x, y));
    }
}

void errorCallback(int /*error*/, const char* description)
{
    std::cerr << description << std::endl;
}

void keyCallback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    // Forward event to GUI
    ImGui_ImplGlfwGL3_KeyCallback(window, key, scancode, action, mods);
    if (ImGui::GetIO().WantCaptureKeyboard) { return; }  // Skip other handling

    Context *ctx = static_cast<Context *>(glfwGetWindowUserPointer(window));
    if (key == GLFW_KEY_R && action == GLFW_PRESS) {
        reloadShaders(ctx);
    }
}

void charCallback(GLFWwindow* window, unsigned int codepoint)
{
    // Forward event to GUI
    ImGui_ImplGlfwGL3_CharCallback(window, codepoint);
    if (ImGui::GetIO().WantTextInput) { return; }  // Skip other handling
}

void mouseButtonCallback(GLFWwindow* window, int button, int action, int mods)
{
    // Forward event to GUI
    ImGui_ImplGlfwGL3_MouseButtonCallback(window, button, action, mods);
    if (ImGui::GetIO().WantCaptureMouse) { return; }  // Skip other handling

    double x, y;
    glfwGetCursorPos(window, &x, &y);

    Context *ctx = static_cast<Context *>(glfwGetWindowUserPointer(window));
    if (action == GLFW_PRESS) {
        mouseButtonPressed(ctx, button, x, y);
    }
    else {
        mouseButtonReleased(ctx, button, x, y);
    }
}

void cursorPosCallback(GLFWwindow* window, double x, double y)
{
    if (ImGui::GetIO().WantCaptureMouse) { return; }  // Skip other handling   

    Context *ctx = static_cast<Context *>(glfwGetWindowUserPointer(window));
    moveTrackball(ctx, x, y);
}

void resizeCallback(GLFWwindow* window, int width, int height)
{
    Context *ctx = static_cast<Context *>(glfwGetWindowUserPointer(window));
    ctx->width = width;
    ctx->height = height;
    ctx->aspect = float(width) / float(height);
    ctx->trackball.radius = double(std::min(width, height)) / 2.0;
    ctx->trackball.center = glm::vec2(width, height) / 2.0f;
    glViewport(0, 0, width, height);
}

void scrollCallback(GLFWwindow* window, double xoffset, double yoffset)
{
    Context *ctx = static_cast<Context *>(glfwGetWindowUserPointer(window));
    if(ctx->zoom_scale > 180) ctx->zoom_scale = 180.0f;
    else if(ctx->zoom_scale < 0) ctx->zoom_scale = 0.0f;
    else ctx->zoom_scale -= yoffset;
}

void init(Context &ctx)
{
    ctx.program = loadShaderProgram(shaderDir() + "triangle.vert",
                                    shaderDir() + "triangle.frag");

    createTriangle(ctx);

    initializeTrackball(ctx);
}

int main(void)
{

    Context ctx;

    // Create a GLFW window
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    ctx.width = 1280;
    ctx.height = 720;
    ctx.window = glfwCreateWindow(ctx.width, ctx.height, "Triangle", nullptr, nullptr);
    glfwMakeContextCurrent(ctx.window);
    glfwSetWindowUserPointer(ctx.window, &ctx);
    glfwSetFramebufferSizeCallback(ctx.window, resizeCallback);
    glfwSetKeyCallback(ctx.window, keyCallback);
    glfwSetCharCallback(ctx.window, charCallback);
    glfwSetScrollCallback(ctx.window, scrollCallback);
    glfwSetMouseButtonCallback(ctx.window, mouseButtonCallback);
    glfwSetCursorPosCallback(ctx.window, cursorPosCallback);


    // Load OpenGL functions
    glewExperimental = true;
    GLenum status = glewInit();
    if (status != GLEW_OK) {
        std::cerr << "Error: " << glewGetErrorString(status) << std::endl;
        std::exit(EXIT_FAILURE);
    }
    std::cout << "OpenGL version: " << glGetString(GL_VERSION) << std::endl;

    // Initialize rendering
    glGenVertexArrays(1, &ctx.defaultVAO);
    glBindVertexArray(ctx.defaultVAO);
    init(ctx);

    //printf("%f\n",getNoise(0.2, 0.2, ctx.seed));
    //printf("%f\n",getNoise(0.2, 0.2, ctx.seed));
    //printf("%f\n",getNoise(0.1, 0.3, ctx.seed));
    //printf("%f\n",getNoise(0.1, 0.3, ctx.seed));

    /*GLfloat *testv = generateVertices(ctx);
    GLint *testi = generateIndices(ctx);
    for (int i = 0; i < ctx.meshResolution*ctx.meshResolution*3*2;i++){
        printf("%d ", testi[i]);
        if(i%3==2)printf("\n");
    }
    int index = 0;
    for (int r = 0; r <= ctx.meshResolution; r++) {
        //For each column
        for (int c = 0; c <= ctx.meshResolution; c++) {
            float x = testv[index++];
            float y = testv[index++];
            float z = testv[index++];

            printf("%f %f %f\n", x, y, z);
            
        }
    }*/

    // Start rendering loop
    while (!glfwWindowShouldClose(ctx.window)) {
        glfwPollEvents();
        display(ctx);
        glfwSwapBuffers(ctx.window);
    }

    // Shutdown
    glfwDestroyWindow(ctx.window);
    glfwTerminate();
    std::exit(EXIT_SUCCESS);
}
