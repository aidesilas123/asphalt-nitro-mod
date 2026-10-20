###### Class com.google.zxing.qrcode.decoder.DataMask (com.google.zxing.qrcode.decoder.DataMask)
.class abstract enum Lcom/google/zxing/qrcode/decoder/DataMask;
.super Ljava/lang/Enum;
.source "DataMask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/qrcode/decoder/DataMask;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum b:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum c:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum d:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum e:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum f:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum g:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum h:Lcom/google/zxing/qrcode/decoder/DataMask;

.field private static final synthetic i:[Lcom/google/zxing/qrcode/decoder/DataMask;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$a;

    const-string v1, "DATA_MASK_000"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->a:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v1, Lcom/google/zxing/qrcode/decoder/DataMask$b;

    const-string v3, "DATA_MASK_001"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/qrcode/decoder/DataMask$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/qrcode/decoder/DataMask;->b:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v3, Lcom/google/zxing/qrcode/decoder/DataMask$c;

    const-string v5, "DATA_MASK_010"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/qrcode/decoder/DataMask$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/qrcode/decoder/DataMask;->c:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v5, Lcom/google/zxing/qrcode/decoder/DataMask$d;

    const-string v7, "DATA_MASK_011"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/qrcode/decoder/DataMask$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/qrcode/decoder/DataMask;->d:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v7, Lcom/google/zxing/qrcode/decoder/DataMask$e;

    const-string v9, "DATA_MASK_100"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/zxing/qrcode/decoder/DataMask$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/zxing/qrcode/decoder/DataMask;->e:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v9, Lcom/google/zxing/qrcode/decoder/DataMask$f;

    const-string v11, "DATA_MASK_101"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/qrcode/decoder/DataMask$f;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/zxing/qrcode/decoder/DataMask;->f:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v11, Lcom/google/zxing/qrcode/decoder/DataMask$g;

    const-string v13, "DATA_MASK_110"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/qrcode/decoder/DataMask$g;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/zxing/qrcode/decoder/DataMask;->g:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v13, Lcom/google/zxing/qrcode/decoder/DataMask$h;

    const-string v15, "DATA_MASK_111"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/zxing/qrcode/decoder/DataMask$h;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/zxing/qrcode/decoder/DataMask;->h:Lcom/google/zxing/qrcode/decoder/DataMask;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/google/zxing/qrcode/decoder/DataMask;->i:[Lcom/google/zxing/qrcode/decoder/DataMask;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/zxing/qrcode/decoder/DataMask$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/DataMask;
    .registers 2

    const-class v0, Lcom/google/zxing/qrcode/decoder/DataMask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/qrcode/decoder/DataMask;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/qrcode/decoder/DataMask;
    .registers 1

    sget-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->i:[Lcom/google/zxing/qrcode/decoder/DataMask;

    invoke-virtual {v0}, [Lcom/google/zxing/qrcode/decoder/DataMask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/qrcode/decoder/DataMask;

    return-object v0
.end method
