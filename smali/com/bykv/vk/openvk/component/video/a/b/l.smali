###### Class com.bykv.vk.openvk.component.video.a.b.l (com.bykv.vk.openvk.component.video.a.b.l)
.class public Lcom/bykv/vk/openvk/component/video/a/b/l;
.super Ljava/lang/Object;
.source "Urls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/a/b/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bykv/vk/openvk/component/video/a/b/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private e:I

.field private f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/component/video/a/b/l;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/component/video/a/b/l;->b:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->e:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/bykv/vk/openvk/component/video/a/b/l$a;

    invoke-direct {v2, p0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/l$a;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/l;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->d:I

    iput v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->g:I

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->e:I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_85

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->d:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->c:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/bykv/vk/openvk/component/video/a/b/l$a;

    invoke-direct {v3, p0, v2}, Lcom/bykv/vk/openvk/component/video/a/b/l$a;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/l;Ljava/lang/String;)V

    sget-object v4, Lcom/bykv/vk/openvk/component/video/a/b/l;->a:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    if-nez v1, :cond_3f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3f
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_43
    sget-object v4, Lcom/bykv/vk/openvk/component/video/a/b/l;->b:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    if-nez v0, :cond_52

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_52
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_56
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_5c
    if-eqz v0, :cond_63

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_63
    if-eqz v1, :cond_6a

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6a
    sget-object p1, Lcom/bykv/vk/openvk/component/video/a/b/e;->i:Ljava/lang/Integer;

    if-eqz p1, :cond_7a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_75

    goto :goto_7a

    :cond_75
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_82

    :cond_7a
    :goto_7a
    iget p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->d:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_81

    const/4 p1, 0x1

    goto :goto_82

    :cond_81
    const/4 p1, 0x2

    :goto_82
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->g:I

    return-void

    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "urls can\'t be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic c()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/l;->a:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/l;->b:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method a()Z
    .registers 3

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->f:I

    iget v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->g:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method b()Lcom/bykv/vk/openvk/component/video/a/b/l$a;
    .registers 4

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/a/b/l;->a()Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->e:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->d:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1a

    const/4 v1, -0x1

    iput v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->e:I

    iget v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->f:I

    goto :goto_1c

    :cond_1a
    iput v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->e:I

    :goto_1c
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/a/b/l$a;

    iget v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->f:I

    iget v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->d:I

    mul-int v1, v1, v2

    iget v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/l;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/bykv/vk/openvk/component/video/a/b/l$a;->b:I

    return-object v0

    :cond_30
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
