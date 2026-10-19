###### Class io.didomi.drawable.C1732c5 (io.didomi.sdk.c5)
.class public final Lio/didomi/sdk/c5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/didomi/sdk/c5;",
        "",
        "<init>",
        "()V",
        "",
        "str",
        "",
        "size",
        "Landroid/graphics/Bitmap;",
        "a",
        "(Ljava/lang/String;I)Landroid/graphics/Bitmap;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/c5;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/c5;

    invoke-direct {v0}, Lio/didomi/sdk/c5;-><init>()V

    sput-object v0, Lio/didomi/sdk/c5;->a:Lio/didomi/sdk/c5;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 12

    :try_start_0
    new-instance v0, Lcom/google/zxing/c;

    invoke-direct {v0}, Lcom/google/zxing/c;-><init>()V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->l:Lcom/google/zxing/BarcodeFormat;

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/c;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    const-string v0, "{\n            MultiForma\u2026l\n            )\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_14} :catch_4c

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->h()I

    move-result v7

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->g()I

    move-result v8

    mul-int v0, v7, v8

    new-array v2, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v8, :cond_3d

    mul-int v3, v1, v7

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v7, :cond_3a

    add-int v5, v3, v4

    invoke-virtual {p1, v4, v1}, Lcom/google/zxing/common/BitMatrix;->f(II)Z

    move-result v6

    if-eqz v6, :cond_34

    const/high16 v6, -0x1000000

    goto :goto_35

    :cond_34
    const/4 v6, -0x1

    :goto_35
    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_3d
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1

    :catch_4c
    const/4 p1, 0x0

    return-object p1
.end method
