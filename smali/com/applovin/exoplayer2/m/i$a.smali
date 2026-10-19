###### Class com.applovin.exoplayer2.m.i.a (com.applovin.exoplayer2.m.i$a)
.class final Lcom/applovin/exoplayer2/m/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/m/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final aev:[F

.field private static final aew:[F

.field private static final aex:[F

.field private static final aey:[Ljava/lang/String;

.field private static final aez:Ljava/nio/FloatBuffer;


# instance fields
.field private final aeA:Landroid/opengl/GLSurfaceView;

.field private final aeB:[I

.field private final aeC:[I

.field private final aeD:[I

.field private final aeE:[I

.field private final aeF:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/applovin/exoplayer2/m/j;",
            ">;"
        }
    .end annotation
.end field

.field private final aeG:[Ljava/nio/FloatBuffer;

.field private aeH:I

.field private aeI:I

.field private aeJ:Lcom/applovin/exoplayer2/m/j;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_32

    sput-object v1, Lcom/applovin/exoplayer2/m/i$a;->aev:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_48

    sput-object v1, Lcom/applovin/exoplayer2/m/i$a;->aew:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/applovin/exoplayer2/m/i$a;->aex:[F

    const-string/jumbo v0, "y_tex"

    const-string v1, "u_tex"

    const-string v2, "v_tex"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/m/i$a;->aey:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_74

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/n;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/m/i$a;->aez:Ljava/nio/FloatBuffer;

    return-void

    :array_32
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41374bc7    # -0.392f
        0x40011687    # 2.017f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

    :array_48
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41a5e354    # -0.213f
        0x40072b02    # 2.112f
        0x3fe58106    # 1.793f
        -0x40f78d50    # -0.533f
        0x0
    .end array-data

    :array_5e
    .array-data 4
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x0
        -0x41bf7cee    # -0.188f
        0x400978d5    # 2.148f
        0x3fd76c8b    # 1.683f
        -0x40d91687    # -0.652f
        0x0
    .end array-data

    :array_74
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private qv()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/i$a;->aeB:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_7
    if-ge v2, v1, :cond_43

    iget v0, p0, Lcom/applovin/exoplayer2/m/i$a;->aeH:I

    sget-object v3, Lcom/applovin/exoplayer2/m/i$a;->aey:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c0

    add-int/2addr v0, v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/i$a;->aeB:[I

    aget v0, v0, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v4, 0x46180400    # 9729.0f

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_43
    invoke-static {}, Lcom/applovin/exoplayer2/l/n;->oX()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/applovin/exoplayer2/m/i$a;->aeF:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/m/j;

    if-nez v1, :cond_12

    iget-object v2, v0, Lcom/applovin/exoplayer2/m/i$a;->aeJ:Lcom/applovin/exoplayer2/m/j;

    if-nez v2, :cond_12

    return-void

    :cond_12
    if-eqz v1, :cond_1d

    iget-object v2, v0, Lcom/applovin/exoplayer2/m/i$a;->aeJ:Lcom/applovin/exoplayer2/m/j;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/m/j;->release()V

    :cond_1b
    iput-object v1, v0, Lcom/applovin/exoplayer2/m/i$a;->aeJ:Lcom/applovin/exoplayer2/m/j;

    :cond_1d
    iget-object v1, v0, Lcom/applovin/exoplayer2/m/i$a;->aeJ:Lcom/applovin/exoplayer2/m/j;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/m/j;

    sget-object v2, Lcom/applovin/exoplayer2/m/i$a;->aew:[F

    iget v3, v1, Lcom/applovin/exoplayer2/m/j;->aeM:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_33

    if-eq v3, v4, :cond_30

    goto :goto_35

    :cond_30
    sget-object v2, Lcom/applovin/exoplayer2/m/i$a;->aex:[F

    goto :goto_35

    :cond_33
    sget-object v2, Lcom/applovin/exoplayer2/m/i$a;->aev:[F

    :goto_35
    iget v3, v0, Lcom/applovin/exoplayer2/m/i$a;->aeI:I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v2, v6}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    iget-object v2, v1, Lcom/applovin/exoplayer2/m/j;->aeL:[I

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iget-object v3, v1, Lcom/applovin/exoplayer2/m/j;->aeK:[Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    :goto_4c
    const/4 v8, 0x2

    if-ge v7, v4, :cond_83

    if-nez v7, :cond_54

    iget v8, v1, Lcom/applovin/exoplayer2/m/j;->height:I

    goto :goto_59

    :cond_54
    iget v9, v1, Lcom/applovin/exoplayer2/m/j;->height:I

    add-int/2addr v9, v5

    div-int/lit8 v8, v9, 0x2

    :goto_59
    move v13, v8

    const v8, 0x84c0

    add-int/2addr v8, v7

    invoke-static {v8}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v8, 0xde1

    iget-object v9, v0, Lcom/applovin/exoplayer2/m/i$a;->aeB:[I

    aget v9, v9, v7

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v8, 0xcf5

    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/16 v9, 0xde1

    const/4 v10, 0x0

    const/16 v11, 0x1909

    aget v12, v2, v7

    const/4 v14, 0x0

    const/16 v15, 0x1909

    const/16 v16, 0x1401

    aget-object v17, v3, v7

    invoke-static/range {v9 .. v17}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    :cond_83
    new-array v3, v4, [I

    iget v1, v1, Lcom/applovin/exoplayer2/m/j;->dE:I

    aput v1, v3, v6

    aget v1, v3, v6

    add-int/2addr v1, v5

    div-int/2addr v1, v8

    aput v1, v3, v8

    aput v1, v3, v5

    const/4 v1, 0x0

    :goto_92
    const/4 v7, 0x4

    const/4 v9, 0x5

    if-ge v1, v4, :cond_f7

    iget-object v10, v0, Lcom/applovin/exoplayer2/m/i$a;->aeD:[I

    aget v10, v10, v1

    aget v11, v3, v1

    if-ne v10, v11, :cond_a6

    iget-object v10, v0, Lcom/applovin/exoplayer2/m/i$a;->aeE:[I

    aget v10, v10, v1

    aget v11, v2, v1

    if-eq v10, v11, :cond_f4

    :cond_a6
    aget v10, v2, v1

    if-eqz v10, :cond_ac

    const/4 v10, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v10, 0x0

    :goto_ad
    invoke-static {v10}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    aget v10, v3, v1

    int-to-float v10, v10

    aget v11, v2, v1

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget-object v11, v0, Lcom/applovin/exoplayer2/m/i$a;->aeG:[Ljava/nio/FloatBuffer;

    const/16 v12, 0x8

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v13, v12, v6

    aput v13, v12, v5

    aput v13, v12, v8

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v4

    aput v10, v12, v7

    aput v13, v12, v9

    const/4 v7, 0x6

    aput v10, v12, v7

    const/4 v7, 0x7

    aput v14, v12, v7

    invoke-static {v12}, Lcom/applovin/exoplayer2/l/n;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    aput-object v7, v11, v1

    iget-object v7, v0, Lcom/applovin/exoplayer2/m/i$a;->aeC:[I

    aget v9, v7, v1

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v7, v0, Lcom/applovin/exoplayer2/m/i$a;->aeG:[Ljava/nio/FloatBuffer;

    aget-object v14, v7, v1

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v7, v0, Lcom/applovin/exoplayer2/m/i$a;->aeD:[I

    aget v9, v3, v1

    aput v9, v7, v1

    iget-object v7, v0, Lcom/applovin/exoplayer2/m/i$a;->aeE:[I

    aget v9, v2, v1

    aput v9, v7, v1

    :cond_f4
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    :cond_f7
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {v9, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lcom/applovin/exoplayer2/l/n;->oX()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 9

    const-string p1, "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

    const-string p2, "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/l/n;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/m/i$a;->aeH:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget p1, p0, Lcom/applovin/exoplayer2/m/i$a;->aeH:I

    const-string p2, "in_pos"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    sget-object v5, Lcom/applovin/exoplayer2/m/i$a;->aez:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/i$a;->aeC:[I

    iget p2, p0, Lcom/applovin/exoplayer2/m/i$a;->aeH:I

    const-string v0, "in_tc_y"

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    aput p2, p1, v0

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/i$a;->aeC:[I

    aget p1, p1, v0

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/i$a;->aeC:[I

    iget p2, p0, Lcom/applovin/exoplayer2/m/i$a;->aeH:I

    const-string v0, "in_tc_u"

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    aput p2, p1, v0

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/i$a;->aeC:[I

    aget p1, p1, v0

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/i$a;->aeC:[I

    iget p2, p0, Lcom/applovin/exoplayer2/m/i$a;->aeH:I

    const-string v0, "in_tc_v"

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    const/4 v0, 0x2

    aput p2, p1, v0

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/i$a;->aeC:[I

    aget p1, p1, v0

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/applovin/exoplayer2/l/n;->oX()V

    iget p1, p0, Lcom/applovin/exoplayer2/m/i$a;->aeH:I

    const-string p2, "mColorConversion"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/m/i$a;->aeI:I

    invoke-static {}, Lcom/applovin/exoplayer2/l/n;->oX()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/i$a;->qv()V

    invoke-static {}, Lcom/applovin/exoplayer2/l/n;->oX()V

    return-void
.end method

.method public setOutputBuffer(Lcom/applovin/exoplayer2/m/j;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/i$a;->aeF:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/m/j;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/m/j;->release()V

    :cond_d
    iget-object p1, p0, Lcom/applovin/exoplayer2/m/i$a;->aeA:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method
