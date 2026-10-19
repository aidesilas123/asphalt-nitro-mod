###### Class com.bykv.vk.openvk.component.video.a.a (com.bykv.vk.openvk.component.video.a.a)
.class public Lcom/bykv/vk/openvk/component/video/a/a;
.super Ljava/lang/Object;
.source "MediaConfig.java"


# static fields
.field public static a:I = 0xa

.field public static b:I = 0xa

.field public static c:I = 0xa

.field public static d:I = 0xa

.field private static e:Lcom/bykv/vk/openvk/component/video/api/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()V
    .registers 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/a;->e:Lcom/bykv/vk/openvk/component/video/api/a/b;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/a/b;->d()V

    :cond_7
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/f/a;->a(Landroid/content/Context;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_c

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/f/a;->a()Lcom/bykv/vk/openvk/component/video/a/b/f/a;

    :cond_c
    return-void
.end method

.method public static a(Lcom/bykv/vk/openvk/component/video/api/a/b;)V
    .registers 1

    sput-object p0, Lcom/bykv/vk/openvk/component/video/a/a;->e:Lcom/bykv/vk/openvk/component/video/api/a/b;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "MediaConfig"

    if-nez p0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "splash"

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/bykv/vk/openvk/component/video/a/a;->a:I

    const-string v1, "reward"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/bykv/vk/openvk/component/video/a/a;->b:I

    const-string v1, "brand"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/bykv/vk/openvk/component/video/a/a;->c:I

    const-string v1, "other"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/bykv/vk/openvk/component/video/a/a;->d:I

    sget v1, Lcom/bykv/vk/openvk/component/video/a/a;->a:I

    if-gez v1, :cond_2d

    sput v2, Lcom/bykv/vk/openvk/component/video/a/a;->a:I

    :cond_2d
    sget v1, Lcom/bykv/vk/openvk/component/video/a/a;->b:I

    if-gez v1, :cond_33

    sput v2, Lcom/bykv/vk/openvk/component/video/a/a;->b:I

    :cond_33
    sget v1, Lcom/bykv/vk/openvk/component/video/a/a;->c:I

    if-gez v1, :cond_39

    sput v2, Lcom/bykv/vk/openvk/component/video/a/a;->c:I

    :cond_39
    if-gez p0, :cond_3d

    sput v2, Lcom/bykv/vk/openvk/component/video/a/a;->d:I

    :cond_3d
    const/16 p0, 0x8

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "splash="

    aput-object v2, p0, v1

    const/4 v1, 0x1

    sget v2, Lcom/bykv/vk/openvk/component/video/a/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v1

    const/4 v1, 0x2

    const-string v2, ",reward="

    aput-object v2, p0, v1

    const/4 v1, 0x3

    sget v2, Lcom/bykv/vk/openvk/component/video/a/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v1

    const/4 v1, 0x4

    const-string v2, ",brand="

    aput-object v2, p0, v1

    const/4 v1, 0x5

    sget v2, Lcom/bykv/vk/openvk/component/video/a/a;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v1

    const/4 v1, 0x6

    const-string v2, ",other="

    aput-object v2, p0, v1

    const/4 v1, 0x7

    sget v2, Lcom/bykv/vk/openvk/component/video/a/a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v1

    invoke-static {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7c
    .catchall {:try_start_5 .. :try_end_7c} :catchall_7d

    goto :goto_85

    :catchall_7d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/f/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_85
    return-void
.end method

.method public static b()I
    .registers 1

    sget v0, Lcom/bykv/vk/openvk/component/video/a/a;->a:I

    return v0
.end method

.method public static c()I
    .registers 1

    sget v0, Lcom/bykv/vk/openvk/component/video/a/a;->b:I

    return v0
.end method

.method public static d()I
    .registers 1

    sget v0, Lcom/bykv/vk/openvk/component/video/a/a;->c:I

    return v0
.end method

.method public static e()I
    .registers 1

    sget v0, Lcom/bykv/vk/openvk/component/video/a/a;->d:I

    return v0
.end method
