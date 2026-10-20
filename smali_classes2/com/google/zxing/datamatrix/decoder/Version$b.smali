###### Class com.google.zxing.datamatrix.decoder.Version.b (com.google.zxing.datamatrix.decoder.Version$b)
.class final Lcom/google/zxing/datamatrix/decoder/Version$b;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version$b;->a:I

    iput p2, p0, Lcom/google/zxing/datamatrix/decoder/Version$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/google/zxing/datamatrix/decoder/Version$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/datamatrix/decoder/Version$b;-><init>(II)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$b;->a:I

    return v0
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version$b;->b:I

    return v0
.end method
