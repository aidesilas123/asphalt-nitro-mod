###### Class com.bykv.vk.openvk.preload.b.l (com.bykv.vk.openvk.preload.b.l)
.class public abstract Lcom/bykv/vk/openvk/preload/b/l;
.super Lcom/bykv/vk/openvk/preload/b/d;
.source "SubBranchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/b/l$a;,
        Lcom/bykv/vk/openvk/preload/b/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        "OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bykv/vk/openvk/preload/b/d<",
        "TIN;TOUT;>;"
    }
.end annotation


# instance fields
.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/b/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/b/d;-><init>()V

    return-void
.end method

.method static a(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/b/h;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bykv/vk/openvk/preload/b/h;

    iget-object p0, p0, Lcom/bykv/vk/openvk/preload/b/h;->a:Ljava/lang/Class;

    const-class v0, Lcom/bykv/vk/openvk/preload/b/f;

    if-ne p0, v0, :cond_1b

    return v2

    :cond_1b
    return v1
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Object;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bykv/vk/openvk/preload/b/d;->a([Ljava/lang/Object;)V

    if-eqz p1, :cond_1c

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_1c

    :try_start_e
    aget-object p1, p1, v0

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/b/l;->g:Ljava/util/Map;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "args error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.bykv.vk.openvk.preload.b.l.a (com.bykv.vk.openvk.preload.b.l$a)
.class public final Lcom/bykv/vk/openvk/preload/b/l$a;
.super Ljava/lang/Object;
.source "SubBranchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/b/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/b/l$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/b/h;)Lcom/bykv/vk/openvk/preload/b/l$a;
    .registers 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/b/l$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/bykv/vk/openvk/preload/b/l$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/b/h;",
            ">;)",
            "Lcom/bykv/vk/openvk/preload/b/l$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/b/l$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

###### Class com.bykv.vk.openvk.preload.b.l.b (com.bykv.vk.openvk.preload.b.l$b)
.class public final Lcom/bykv/vk/openvk/preload/b/l$b;
.super Ljava/lang/Object;
.source "SubBranchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/b/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/bykv/vk/openvk/preload/b/b/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/b/l$b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bykv/vk/openvk/preload/b/l;",
            ">;)",
            "Lcom/bykv/vk/openvk/preload/b/h;"
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/b/h$a;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/b/h$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/b/h$a;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/b/l$b;->a:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p1, Lcom/bykv/vk/openvk/preload/b/h$a;->c:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/b/l$b;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    iput-object v0, p1, Lcom/bykv/vk/openvk/preload/b/h$a;->b:Lcom/bykv/vk/openvk/preload/b/b/a;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/b/h$a;->a()Lcom/bykv/vk/openvk/preload/b/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/b/l$a;
    .registers 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/b/l$b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Lcom/bykv/vk/openvk/preload/b/l$a;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/b/l$a;-><init>()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/b/l$b;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "duplicated branch name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
