###### Class com.bykv.vk.openvk.preload.a.b.a.m (com.bykv.vk.openvk.preload.a.b.a.m)
.class final Lcom/bykv/vk/openvk/preload/a/b/a/m;
.super Lcom/bykv/vk/openvk/preload/a/t;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bykv/vk/openvk/preload/a/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bykv/vk/openvk/preload/a/f;

.field private final b:Lcom/bykv/vk/openvk/preload/a/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/t<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/a/f;Lcom/bykv/vk/openvk/preload/a/t;Ljava/lang/reflect/Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/f;",
            "Lcom/bykv/vk/openvk/preload/a/t<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/t;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a:Lcom/bykv/vk/openvk/preload/a/f;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m;->b:Lcom/bykv/vk/openvk/preload/a/t;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m;->b:Lcom/bykv/vk/openvk/preload/a/t;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/a/t;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m;->b:Lcom/bykv/vk/openvk/preload/a/t;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_16

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_12

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_12

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_16

    :cond_12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :cond_16
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_2f

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m;->a:Lcom/bykv/vk/openvk/preload/a/f;

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/preload/a/f;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/t;

    move-result-object v0

    instance-of v1, v0, Lcom/bykv/vk/openvk/preload/a/b/a/i$a;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/m;->b:Lcom/bykv/vk/openvk/preload/a/t;

    instance-of v2, v1, Lcom/bykv/vk/openvk/preload/a/b/a/i$a;

    if-nez v2, :cond_2f

    move-object v0, v1

    :cond_2f
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/a/t;->a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
