###### Class com.bytedance.sdk.openadsdk.k.a.b (com.bytedance.sdk.openadsdk.k.a.b)
.class public Lcom/bytedance/sdk/openadsdk/k/a/b;
.super Ljava/lang/Object;
.source "GifRequestResult.java"


# instance fields
.field a:I

.field private b:[B

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->b:[B

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->c:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->f:Ljava/util/Map;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->d:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->c:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->a:I

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->b:[B

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->c:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->f:Ljava/util/Map;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->b:[B

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->a:I

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()[B
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->b:[B

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->c:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/d;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->b:[B
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_17

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GifRequestResult"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->b:[B

    return-object v0
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->c:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->b:[B

    if-eqz v0, :cond_e

    array-length v0, v0

    if-lez v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method
