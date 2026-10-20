###### Class com.bykv.vk.openvk.component.video.api.f.c (com.bykv.vk.openvk.component.video.api.f.c)
.class public Lcom/bykv/vk/openvk/component/video/api/f/c;
.super Ljava/lang/Object;
.source "VLogger.java"


# static fields
.field private static a:Z = false

.field private static b:I = 0x4

.field private static c:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_2d

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_2d

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_28

    aget-object v3, p0, v2

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_1b
    const-string v3, " null "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_20
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    :goto_2d
    const-string p0, ""

    return-object p0
.end method

.method public static a()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->a:Z

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->a(I)V

    return-void
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/bykv/vk/openvk/component/video/api/f/c;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/bykv/vk/openvk/component/video/api/f/c;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    :cond_8
    sget v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_14

    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    return-void

    :cond_a
    sget v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_16

    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    :cond_8
    sget v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_18

    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->a:Z

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->a(I)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "Logger"

    invoke-static {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    :cond_8
    sget v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_14

    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    return-void

    :cond_a
    sget v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_16

    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    :cond_8
    sget v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_18

    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/api/f/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/bykv/vk/openvk/component/video/api/f/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]-["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    :cond_8
    sget v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_14

    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    return-void

    :cond_a
    sget v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_16

    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    return-void
.end method

.method public static c()Z
    .registers 1

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/f/c;->a:Z

    return v0
.end method
