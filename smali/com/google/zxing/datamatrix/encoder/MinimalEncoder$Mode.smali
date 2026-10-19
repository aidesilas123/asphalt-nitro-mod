###### Class com.google.zxing.datamatrix.encoder.MinimalEncoder.Mode (com.google.zxing.datamatrix.encoder.MinimalEncoder$Mode)
.class final enum Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
.super Ljava/lang/Enum;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field public static final enum b:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field public static final enum c:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field public static final enum d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field public static final enum e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field public static final enum f:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field private static final synthetic g:[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const-string v1, "ASCII"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->a:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const-string v3, "C40"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->b:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    new-instance v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const-string v5, "TEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->c:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    new-instance v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const-string v7, "X12"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->d:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const-string v9, "EDF"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->e:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    new-instance v9, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const-string v11, "B256"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->f:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->g:[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .registers 2

    const-class v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .registers 1

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->g:[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v0}, [Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0
.end method
