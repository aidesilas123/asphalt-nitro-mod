###### Class com.mbridge.msdk.video.dynview.a (com.mbridge.msdk.video.dynview.a)
.class public final Lcom/mbridge/msdk/video/dynview/a;
.super Ljava/lang/Object;
.source "DynamicBean.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/a;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/a;->a:Landroid/view/View;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/a;->b:Ljava/util/List;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/dynview/a;->c:Z

    return-void
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/a;->c:Z

    return v0
.end method
