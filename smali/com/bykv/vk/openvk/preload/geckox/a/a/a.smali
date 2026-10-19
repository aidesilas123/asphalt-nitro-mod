###### Class com.bykv.vk.openvk.preload.geckox.a.a.a (com.bykv.vk.openvk.preload.geckox.a.a.a)
.class public final Lcom/bykv/vk/openvk/preload/geckox/a/a/a;
.super Ljava/lang/Object;
.source "CacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;
    }
.end annotation


# instance fields
.field final a:I

.field public final b:Lcom/bykv/vk/openvk/preload/geckox/a/a/b;

.field final c:Lcom/bykv/vk/openvk/preload/geckox/a/a/c;


# direct methods
.method private constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;->a:I

    iput v0, p0, Lcom/bykv/vk/openvk/preload/geckox/a/a/a;->a:I

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;->b:Lcom/bykv/vk/openvk/preload/geckox/a/a/b;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/a/a/a;->b:Lcom/bykv/vk/openvk/preload/geckox/a/a/b;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;->c:Lcom/bykv/vk/openvk/preload/geckox/a/a/c;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/a/a/a;->c:Lcom/bykv/vk/openvk/preload/geckox/a/a/c;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/a/a/a;-><init>(Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;)V

    return-void
.end method

###### Class com.bykv.vk.openvk.preload.geckox.a.a.a.C0097a (com.bykv.vk.openvk.preload.geckox.a.a.a$a)
.class public final Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;
.super Ljava/lang/Object;
.source "CacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/bykv/vk/openvk/preload/geckox/a/a/b;

.field c:Lcom/bykv/vk/openvk/preload/geckox/a/a/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->a:Lcom/bykv/vk/openvk/preload/geckox/a/a/b;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/a/a/a$a;->b:Lcom/bykv/vk/openvk/preload/geckox/a/a/b;

    return-void
.end method
