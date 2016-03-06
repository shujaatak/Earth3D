#ifndef SKYBOX_H
#define SKYBOX_H
#include <QOpenGLFunctions_4_3_Core>
#include <QOpenGLVertexArrayObject>
#include <QOpenGLBuffer>
#include <QOpenGLShaderProgram>
#include <QOpenGLTexture>

class SkyBox : protected  QOpenGLFunctions_4_3_Core
{

public:
    SkyBox(QOpenGLShaderProgram *prog);
    ~SkyBox();
    void render(QMatrix4x4 projection, QMatrix4x4 modelview, QMatrix4x4 rot);

private:

    QOpenGLShaderProgram *program;
    GLuint uniformViewMatrix;
    GLuint loadCubemap(QVector<QString> faces);
    GLuint skyboxVAO, skyboxVBO;
    GLuint cubemapTexture;
    //QOpenGLFunctions_4_3_Core *glf;

};


#endif // SKYBOX_H
