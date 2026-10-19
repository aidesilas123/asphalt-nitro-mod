###### Class com.mbridge.msdk.video.dynview.i.a.a (com.mbridge.msdk.video.dynview.i.a.a)
.class public Lcom/mbridge/msdk/video/dynview/i/a/a;
.super Ljava/lang/Object;
.source "ChoiceOneDrawBitBg.java"


# static fields
.field private static volatile a:Lcom/mbridge/msdk/video/dynview/i/a/a;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/dynview/i/a/a;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a;->b:Landroid/view/View;

    return-object p0
.end method

.method public static a()Lcom/mbridge/msdk/video/dynview/i/a/a;
    .registers 2

    sget-object v0, Lcom/mbridge/msdk/video/dynview/i/a/a;->a:Lcom/mbridge/msdk/video/dynview/i/a/a;

    if-nez v0, :cond_19

    const-class v0, Lcom/mbridge/msdk/video/dynview/i/a/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/mbridge/msdk/video/dynview/i/a/a;->a:Lcom/mbridge/msdk/video/dynview/i/a/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/mbridge/msdk/video/dynview/i/a/a;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/i/a/a;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/video/dynview/i/a/a;->a:Lcom/mbridge/msdk/video/dynview/i/a/a;

    :cond_12
    sget-object v1, Lcom/mbridge/msdk/video/dynview/i/a/a;->a:Lcom/mbridge/msdk/video/dynview/i/a/a;

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    sget-object v0, Lcom/mbridge/msdk/video/dynview/i/a/a;->a:Lcom/mbridge/msdk/video/dynview/i/a/a;

    return-object v0
.end method

.method private declared-synchronized a(IFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    new-instance p5, Lcom/mbridge/msdk/video/dynview/i/a/a$1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/video/dynview/i/a/a$1;-><init>(Lcom/mbridge/msdk/video/dynview/i/a/a;Landroid/graphics/Bitmap;IFF)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/f/b;->d()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_16
    .catchall {:try_start_1 .. :try_end_13} :catchall_14

    goto :goto_20

    :catchall_14
    move-exception p1

    goto :goto_22

    :catch_16
    move-exception p1

    :try_start_17
    const-string p2, "ChoiceOneDrawBitBg"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_14

    :goto_20
    monitor-exit p0

    return-void

    :goto_22
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lcom/mbridge/msdk/video/dynview/c;Landroid/view/View;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/mbridge/msdk/video/dynview/c;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_b1

    if-eqz p2, :cond_b1

    if-eqz p1, :cond_b1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_15

    goto/16 :goto_b1

    :cond_15
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b1

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_27

    goto/16 :goto_b1

    :cond_27
    iput-object p3, p0, Lcom/mbridge/msdk/video/dynview/i/a/a;->b:Landroid/view/View;

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->e()I

    move-result v3

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->d()F

    move-result v4

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->c()F

    move-result v5

    :try_start_35
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->g()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_a7

    const-string v1, ""

    if-eqz v0, :cond_51

    :try_start_42
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p3}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_52

    :cond_51
    move-object p3, v1

    :goto_52
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_67

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_67
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_7c

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7c

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    move-object v6, p2

    goto :goto_7d

    :cond_7c
    move-object v6, v0

    :goto_7d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_91

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_91

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    move-object v7, p1

    goto :goto_92

    :cond_91
    move-object v7, v0

    :goto_92
    if-eqz v6, :cond_b1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_b1

    if-eqz v7, :cond_b1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_b1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/video/dynview/i/a/a;->a(IFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_a6} :catch_a7

    goto :goto_b1

    :catch_a7
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChoiceOneDrawBitBg"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b1
    :goto_b1
    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a;->b:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/i/a/a;->b:Landroid/view/View;

    :cond_7
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/i/a/a;->c:Landroid/graphics/Bitmap;

    :cond_18
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/i/a/a;->d:Landroid/graphics/Bitmap;

    :cond_29
    return-void
.end method

###### Class com.mbridge.msdk.video.dynview.i.a.a.AnonymousClass1 (com.mbridge.msdk.video.dynview.i.a.a$1)
.class final Lcom/mbridge/msdk/video/dynview/i/a/a$1;
.super Ljava/lang/Object;
.source "ChoiceOneDrawBitBg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/i/a/a;->a(IFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:I

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/mbridge/msdk/video/dynview/i/a/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/i/a/a;Landroid/graphics/Bitmap;IFF)V
    .registers 6

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->e:Lcom/mbridge/msdk/video/dynview/i/a/a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->a:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->b:I

    iput p4, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->c:F

    iput p5, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->a:Landroid/graphics/Bitmap;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/l;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->a:Landroid/graphics/Bitmap;

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/l;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/video/dynview/g/a;->a()Lcom/mbridge/msdk/video/dynview/g/a$a;

    move-result-object v2

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->b:I

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/video/dynview/g/a$a;->a(I)Lcom/mbridge/msdk/video/dynview/g/a$b;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/mbridge/msdk/video/dynview/g/a$b;->a(Landroid/graphics/Bitmap;)Lcom/mbridge/msdk/video/dynview/g/a$b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/dynview/g/a$b;->b(Landroid/graphics/Bitmap;)Lcom/mbridge/msdk/video/dynview/g/a$b;

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_40

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->c:F

    iget v1, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->d:F

    cmpl-float v3, v0, v1

    if-lez v3, :cond_36

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/video/dynview/g/a$a;->a(F)Lcom/mbridge/msdk/video/dynview/g/a$b;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->d:F

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/dynview/g/a$b;->b(F)Lcom/mbridge/msdk/video/dynview/g/a$b;

    goto :goto_4b

    :cond_36
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/video/dynview/g/a$a;->a(F)Lcom/mbridge/msdk/video/dynview/g/a$b;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->c:F

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/dynview/g/a$b;->b(F)Lcom/mbridge/msdk/video/dynview/g/a$b;

    goto :goto_4b

    :cond_40
    iget v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->c:F

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/video/dynview/g/a$a;->a(F)Lcom/mbridge/msdk/video/dynview/g/a$b;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->d:F

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/dynview/g/a$b;->b(F)Lcom/mbridge/msdk/video/dynview/g/a$b;

    :goto_4b
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->e:Lcom/mbridge/msdk/video/dynview/i/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/i/a/a;->a(Lcom/mbridge/msdk/video/dynview/i/a/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->e:Lcom/mbridge/msdk/video/dynview/i/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/i/a/a;->a(Lcom/mbridge/msdk/video/dynview/i/a/a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/video/dynview/i/a/a$1$1;

    invoke-direct {v1, p0, v2}, Lcom/mbridge/msdk/video/dynview/i/a/a$1$1;-><init>(Lcom/mbridge/msdk/video/dynview/i/a/a$1;Lcom/mbridge/msdk/video/dynview/g/a$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    goto :goto_6c

    :catch_62
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChoiceOneDrawBitBg"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    return-void
.end method

###### Class com.mbridge.msdk.video.dynview.i.a.a.AnonymousClass1.RunnableC04311 (com.mbridge.msdk.video.dynview.i.a.a$1$1)
.class final Lcom/mbridge/msdk/video/dynview/i/a/a$1$1;
.super Ljava/lang/Object;
.source "ChoiceOneDrawBitBg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/i/a/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/dynview/g/a$a;

.field final synthetic b:Lcom/mbridge/msdk/video/dynview/i/a/a$1;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/i/a/a$1;Lcom/mbridge/msdk/video/dynview/g/a$a;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1$1;->b:Lcom/mbridge/msdk/video/dynview/i/a/a$1;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1$1;->a:Lcom/mbridge/msdk/video/dynview/g/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1$1;->b:Lcom/mbridge/msdk/video/dynview/i/a/a$1;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->e:Lcom/mbridge/msdk/video/dynview/i/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/i/a/a;->a(Lcom/mbridge/msdk/video/dynview/i/a/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1$1;->a:Lcom/mbridge/msdk/video/dynview/g/a$a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/dynview/g/a$a;->a()Lcom/mbridge/msdk/video/dynview/g/a;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_24

    :cond_13
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1$1;->b:Lcom/mbridge/msdk/video/dynview/i/a/a$1;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/i/a/a$1;->e:Lcom/mbridge/msdk/video/dynview/i/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/i/a/a;->a(Lcom/mbridge/msdk/video/dynview/i/a/a;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/i/a/a$1$1;->a:Lcom/mbridge/msdk/video/dynview/g/a$a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/dynview/g/a$a;->a()Lcom/mbridge/msdk/video/dynview/g/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_24
    :goto_24
    return-void
.end method
