TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

copydata.commands = $(COPY_DIR) -r $$PWD/data $$OUT_PWD
first.depends = $(first) copydata
export(first.depends)
export(copydata.commands)
QMAKE_EXTRA_TARGETS += first copydata

INCLUDEPATH += \
    $PWD

LIBS += -lglfw
LIBS += -ldl

SOURCES += main.cpp \
    glad/src/glad.c \
    stb_image.cpp \
    main.cpp \
    stb_image.cpp \
    glad/src/glad.c

HEADERS += \
    glad/include/glad/glad.h \
    root_directory.h \
    glad/include/glad/glad.h \
    glad/include/KHR/khrplatform.h \
    learnopengl/camera.h \
    learnopengl/filesystem.h \
    learnopengl/mesh.h \
    learnopengl/model.h \
    learnopengl/shader.h \
    learnopengl/shader_m.h \
    learnopengl/shader_s.h \
    root_directory.h \
    stb_image.h

DISTFILES += \
    data/shaders/6.1.cubemaps.fs \
    data/shaders/6.1.cubemaps.vs \
    data/shaders/6.1.skybox.fs \
    data/shaders/6.1.skybox.vs \
    data/textures/skybox/back.jpg \
    data/textures/skybox/bottom.jpg \
    data/textures/skybox/front.jpg \
    data/textures/skybox/left.jpg \
    data/textures/skybox/right.jpg \
    data/textures/skybox/top.jpg \
    data/textures/marble.jpg \
    data/shaders/6.1.cubemaps.fs \
    data/shaders/6.1.cubemaps.vs \
    data/shaders/6.1.skybox.fs \
    data/shaders/6.1.skybox.vs

SUBDIRS += \
    sky_box.pro
