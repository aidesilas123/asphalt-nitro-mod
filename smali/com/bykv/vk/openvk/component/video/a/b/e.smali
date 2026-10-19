###### Class com.bykv.vk.openvk.component.video.a.b.e (com.bykv.vk.openvk.component.video.a.b.e)
.class public Lcom/bykv/vk/openvk/component/video/a/b/e;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field static volatile a:Lcom/bykv/vk/openvk/component/video/a/b/a/b;

.field static volatile b:Lcom/bykv/vk/openvk/component/video/a/b/a/c;

.field public static final c:Z

.field public static volatile d:Z

.field static volatile e:Z

.field static volatile f:Z

.field static volatile g:I

.field public static volatile h:I

.field public static volatile i:Ljava/lang/Integer;

.field private static volatile j:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

.field private static volatile k:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/bytedance/sdk/component/utils/l;->d()Z

    move-result v0

    sput-boolean v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->e:Z

    const/4 v0, 0x0

    sput v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->g:I

    const/4 v0, 0x3

    sput v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->h:I

    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->k:Landroid/content/Context;

    return-object v0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/bykv/vk/openvk/component/video/a/b/e;->g:I

    return-void
.end method

.method public static a(Lcom/bykv/vk/openvk/component/video/a/b/a/c;Landroid/content/Context;)V
    .registers 4

    if-eqz p0, :cond_59

    if-eqz p1, :cond_59

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->k:Landroid/content/Context;

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->b:Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    if-eqz v0, :cond_f

    return-void

    :cond_f
    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->a:Lcom/bykv/vk/openvk/component/video/a/b/a/b;

    if-eqz v0, :cond_2e

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/a/b/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a/c;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_2e

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DiskLruCache and DiskCache can\'t use the same dir"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    :goto_2e
    sput-object p0, Lcom/bykv/vk/openvk/component/video/a/b/e;->b:Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Landroid/content/Context;)Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    move-result-object p1

    sput-object p1, Lcom/bykv/vk/openvk/component/video/a/b/e;->j:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    sget-object p1, Lcom/bykv/vk/openvk/component/video/a/b/e;->b:Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/b/e$1;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/a/b/e$1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/a/b/a/c;->a(Lcom/bykv/vk/openvk/component/video/a/b/a/c$a;)V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a()Lcom/bykv/vk/openvk/component/video/a/b/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Lcom/bykv/vk/openvk/component/video/a/b/a/c;)V

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->j:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/d;->c()Lcom/bykv/vk/openvk/component/video/a/b/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bykv/vk/openvk/component/video/a/b/d;->a(Lcom/bykv/vk/openvk/component/video/a/b/a/c;)V

    sget-object p0, Lcom/bykv/vk/openvk/component/video/a/b/e;->j:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    invoke-virtual {p1, p0}, Lcom/bykv/vk/openvk/component/video/a/b/d;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)V

    return-void

    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DiskLruCache and Context can\'t be null !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/bykv/vk/openvk/component/video/a/b/e;->e:Z

    return-void
.end method

.method public static b()Lcom/bykv/vk/openvk/component/video/a/b/a/c;
    .registers 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->b:Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    return-object v0
.end method

.method public static b(Z)V
    .registers 1

    sput-boolean p0, Lcom/bykv/vk/openvk/component/video/a/b/e;->f:Z

    return-void
.end method

.method public static c()Lcom/bykv/vk/openvk/component/video/a/b/a/b;
    .registers 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->a:Lcom/bykv/vk/openvk/component/video/a/b/a/b;

    return-object v0
.end method

.method static synthetic d()Lcom/bykv/vk/openvk/component/video/a/b/b/c;
    .registers 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->j:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    return-object v0
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.e.AnonymousClass1 (com.bykv.vk.openvk.component.video.a.b.e$1)
.class final Lcom/bykv/vk/openvk/component/video/a/b/e$1;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/a/b/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/a/b/e;->a(Lcom/bykv/vk/openvk/component/video/a/b/a/c;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new cache created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG_PROXY_DiskLruCache"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/e;->d()Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/bykv/vk/openvk/component/video/a/b/b/c;->a(Ljava/util/Collection;I)V

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache file removed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG_PROXY_DiskLruCache"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method
