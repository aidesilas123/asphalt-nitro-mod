###### Class com.bykv.vk.openvk.component.video.a.b.e.c (com.bykv.vk.openvk.component.video.a.b.e.c)
.class public Lcom/bykv/vk/openvk/component/video/a/b/e/c;
.super Ljava/lang/Object;
.source "NetworkSourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/a/b/e/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bykv/vk/openvk/component/video/a/b/e/c;
    .registers 1

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/e/c$a;->a()Lcom/bykv/vk/openvk/component/video/a/b/e/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lcom/bykv/vk/openvk/component/video/a/b/e/b;
    .registers 2

    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/b/e/d;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/a/b/e/d;-><init>()V

    return-object v0
.end method

###### Class com.bykv.vk.openvk.component.video.a.b.e.c.a (com.bykv.vk.openvk.component.video.a.b.e.c$a)
.class final Lcom/bykv/vk/openvk/component/video/a/b/e/c$a;
.super Ljava/lang/Object;
.source "NetworkSourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/bykv/vk/openvk/component/video/a/b/e/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/b/e/c;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/a/b/e/c;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/component/video/a/b/e/c$a;->a:Lcom/bykv/vk/openvk/component/video/a/b/e/c;

    return-void
.end method

.method static synthetic a()Lcom/bykv/vk/openvk/component/video/a/b/e/c;
    .registers 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/e/c$a;->a:Lcom/bykv/vk/openvk/component/video/a/b/e/c;

    return-object v0
.end method
