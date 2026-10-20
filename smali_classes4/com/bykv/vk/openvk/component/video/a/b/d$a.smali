###### Class com.bykv.vk.openvk.component.video.a.b.d.a (com.bykv.vk.openvk.component.video.a.b.d$a)
.class final Lcom/bykv/vk/openvk/component/video/a/b/d$a;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Z

.field final b:Z

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final f:[Ljava/lang/String;


# direct methods
.method constructor <init>(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->a:Z

    iput-boolean p2, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->b:Z

    iput p3, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->c:I

    iput-object p4, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->e:Ljava/util/Map;

    iput-object p6, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->f:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_30

    const-class v1, Lcom/bykv/vk/openvk/component/video/a/b/d$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_30

    :cond_10
    check-cast p1, Lcom/bykv/vk/openvk/component/video/a/b/d$a;

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->a:Z

    iget-boolean v2, p1, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->a:Z

    if-eq v1, v2, :cond_19

    return v0

    :cond_19
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->b:Z

    iget-boolean v2, p1, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->b:Z

    if-eq v1, v2, :cond_20

    return v0

    :cond_20
    iget v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->c:I

    iget v2, p1, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->c:I

    if-eq v1, v2, :cond_27

    return v0

    :cond_27
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_30
    :goto_30
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->a:Z

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
