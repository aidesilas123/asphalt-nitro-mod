###### Class com.bykv.vk.openvk.preload.a.b.h.c (com.bykv.vk.openvk.preload.a.b.h$c)
.class abstract Lcom/bykv/vk/openvk/preload/a/b/h$c;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/a/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/bykv/vk/openvk/preload/a/b/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/bykv/vk/openvk/preload/a/b/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/bykv/vk/openvk/preload/a/b/h;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/a/b/h;)V
    .registers 3

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->e:Lcom/bykv/vk/openvk/preload/a/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/a/b/h;->e:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->d:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget p1, p1, Lcom/bykv/vk/openvk/preload/a/b/h;->d:I

    iput p1, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->d:I

    return-void
.end method


# virtual methods
.method final a()Lcom/bykv/vk/openvk/preload/a/b/h$d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bykv/vk/openvk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->e:Lcom/bykv/vk/openvk/preload/a/b/h;

    iget-object v2, v1, Lcom/bykv/vk/openvk/preload/a/b/h;->e:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-eq v0, v2, :cond_1b

    iget v1, v1, Lcom/bykv/vk/openvk/preload/a/b/h;->d:I

    iget v2, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->d:I

    if-ne v1, v2, :cond_15

    iget-object v1, v0, Lcom/bykv/vk/openvk/preload/a/b/h$d;->d:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    return-object v0

    :cond_15
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .registers 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->b:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->e:Lcom/bykv/vk/openvk/preload/a/b/h;

    iget-object v1, v1, Lcom/bykv/vk/openvk/preload/a/b/h;->e:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final remove()V
    .registers 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->e:Lcom/bykv/vk/openvk/preload/a/b/h;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bykv/vk/openvk/preload/a/b/h;->a(Lcom/bykv/vk/openvk/preload/a/b/h$d;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->c:Lcom/bykv/vk/openvk/preload/a/b/h$d;

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->e:Lcom/bykv/vk/openvk/preload/a/b/h;

    iget v0, v0, Lcom/bykv/vk/openvk/preload/a/b/h;->d:I

    iput v0, p0, Lcom/bykv/vk/openvk/preload/a/b/h$c;->d:I

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
