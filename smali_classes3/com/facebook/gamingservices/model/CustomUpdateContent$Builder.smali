###### Class com.facebook.gamingservices.model.CustomUpdateContent.Builder (com.facebook.gamingservices.model.CustomUpdateContent$Builder)
.class public final Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;
.super Ljava/lang/Object;
.source "CustomUpdateContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/model/CustomUpdateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final contextTokenId:Ljava/lang/String;

.field private cta:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;

.field private data:Ljava/lang/String;

.field private final image:Landroid/graphics/Bitmap;

.field private final media:Lcom/facebook/gamingservices/model/CustomUpdateMedia;

.field private final text:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;


# direct methods
.method public constructor <init>(Lcom/facebook/gamingservices/GamingContext;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Landroid/graphics/Bitmap;)V
    .registers 5

    const-string v0, "contextToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "image"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/gamingservices/GamingContext;->getContextID()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;-><init>(Ljava/lang/String;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Landroid/graphics/Bitmap;Lcom/facebook/gamingservices/model/CustomUpdateMedia;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/gamingservices/GamingContext;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Lcom/facebook/gamingservices/model/CustomUpdateMedia;)V
    .registers 5

    const-string v0, "contextToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "media"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/gamingservices/GamingContext;->getContextID()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;-><init>(Ljava/lang/String;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Landroid/graphics/Bitmap;Lcom/facebook/gamingservices/model/CustomUpdateMedia;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Landroid/graphics/Bitmap;Lcom/facebook/gamingservices/model/CustomUpdateMedia;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->contextTokenId:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->text:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;

    iput-object p3, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->image:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->media:Lcom/facebook/gamingservices/model/CustomUpdateMedia;

    return-void
.end method

.method private final bitmapToBase64String(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image/png;base64,"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final build()Lcom/facebook/gamingservices/model/CustomUpdateContent;
    .registers 10

    iget-object v0, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->media:Lcom/facebook/gamingservices/model/CustomUpdateMedia;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->getGif()Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v3, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->media:Lcom/facebook/gamingservices/model/CustomUpdateMedia;

    invoke-virtual {v3}, Lcom/facebook/gamingservices/model/CustomUpdateMedia;->getVideo()Lcom/facebook/gamingservices/model/CustomUpdateMediaInfo;

    move-result-object v3

    if-eqz v3, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1d

    goto :goto_25

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid CustomUpdateMedia, please set either gif or video"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->image:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->bitmapToBase64String(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->contextTokenId:Ljava/lang/String;

    if-eqz v2, :cond_3f

    new-instance v0, Lcom/facebook/gamingservices/model/CustomUpdateContent;

    iget-object v3, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->text:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;

    iget-object v4, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->cta:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;

    iget-object v6, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->media:Lcom/facebook/gamingservices/model/CustomUpdateMedia;

    iget-object v7, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->data:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/gamingservices/model/CustomUpdateContent;-><init>(Ljava/lang/String;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;Ljava/lang/String;Lcom/facebook/gamingservices/model/CustomUpdateMedia;Ljava/lang/String;Lkotlin/jvm/internal/n;)V

    return-object v0

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameter contextToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCta()Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->cta:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;

    return-object v0
.end method

.method public final getData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final setCta(Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;)Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;
    .registers 3

    const-string v0, "cta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->cta:Lcom/facebook/gamingservices/model/CustomUpdateLocalizedText;

    return-object p0
.end method

.method public final setData(Ljava/lang/String;)Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/gamingservices/model/CustomUpdateContent$Builder;->data:Ljava/lang/String;

    return-object p0
.end method
