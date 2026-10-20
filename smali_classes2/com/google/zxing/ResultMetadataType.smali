###### Class com.google.zxing.ResultMetadataType (com.google.zxing.ResultMetadataType)
.class public final enum Lcom/google/zxing/ResultMetadataType;
.super Ljava/lang/Enum;
.source "ResultMetadataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/ResultMetadataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/ResultMetadataType;

.field public static final enum b:Lcom/google/zxing/ResultMetadataType;

.field public static final enum c:Lcom/google/zxing/ResultMetadataType;

.field public static final enum d:Lcom/google/zxing/ResultMetadataType;

.field public static final enum e:Lcom/google/zxing/ResultMetadataType;

.field public static final enum f:Lcom/google/zxing/ResultMetadataType;

.field public static final enum g:Lcom/google/zxing/ResultMetadataType;

.field public static final enum h:Lcom/google/zxing/ResultMetadataType;

.field public static final enum i:Lcom/google/zxing/ResultMetadataType;

.field public static final enum j:Lcom/google/zxing/ResultMetadataType;

.field public static final enum k:Lcom/google/zxing/ResultMetadataType;

.field public static final enum l:Lcom/google/zxing/ResultMetadataType;

.field public static final enum m:Lcom/google/zxing/ResultMetadataType;

.field public static final enum n:Lcom/google/zxing/ResultMetadataType;

.field private static final synthetic o:[Lcom/google/zxing/ResultMetadataType;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->a:Lcom/google/zxing/ResultMetadataType;

    new-instance v1, Lcom/google/zxing/ResultMetadataType;

    const-string v3, "ORIENTATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/ResultMetadataType;->b:Lcom/google/zxing/ResultMetadataType;

    new-instance v3, Lcom/google/zxing/ResultMetadataType;

    const-string v5, "BYTE_SEGMENTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/ResultMetadataType;->c:Lcom/google/zxing/ResultMetadataType;

    new-instance v5, Lcom/google/zxing/ResultMetadataType;

    const-string v7, "ERROR_CORRECTION_LEVEL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/ResultMetadataType;->d:Lcom/google/zxing/ResultMetadataType;

    new-instance v7, Lcom/google/zxing/ResultMetadataType;

    const-string v9, "ERRORS_CORRECTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/zxing/ResultMetadataType;->e:Lcom/google/zxing/ResultMetadataType;

    new-instance v9, Lcom/google/zxing/ResultMetadataType;

    const-string v11, "ERASURES_CORRECTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/zxing/ResultMetadataType;->f:Lcom/google/zxing/ResultMetadataType;

    new-instance v11, Lcom/google/zxing/ResultMetadataType;

    const-string v13, "ISSUE_NUMBER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/zxing/ResultMetadataType;->g:Lcom/google/zxing/ResultMetadataType;

    new-instance v13, Lcom/google/zxing/ResultMetadataType;

    const-string v15, "SUGGESTED_PRICE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/zxing/ResultMetadataType;->h:Lcom/google/zxing/ResultMetadataType;

    new-instance v15, Lcom/google/zxing/ResultMetadataType;

    const-string v14, "POSSIBLE_COUNTRY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/zxing/ResultMetadataType;->i:Lcom/google/zxing/ResultMetadataType;

    new-instance v14, Lcom/google/zxing/ResultMetadataType;

    const-string v12, "UPC_EAN_EXTENSION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/zxing/ResultMetadataType;->j:Lcom/google/zxing/ResultMetadataType;

    new-instance v12, Lcom/google/zxing/ResultMetadataType;

    const-string v10, "PDF417_EXTRA_METADATA"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/zxing/ResultMetadataType;->k:Lcom/google/zxing/ResultMetadataType;

    new-instance v10, Lcom/google/zxing/ResultMetadataType;

    const-string v8, "STRUCTURED_APPEND_SEQUENCE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/zxing/ResultMetadataType;->l:Lcom/google/zxing/ResultMetadataType;

    new-instance v8, Lcom/google/zxing/ResultMetadataType;

    const-string v6, "STRUCTURED_APPEND_PARITY"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/zxing/ResultMetadataType;->m:Lcom/google/zxing/ResultMetadataType;

    new-instance v6, Lcom/google/zxing/ResultMetadataType;

    const-string v4, "SYMBOLOGY_IDENTIFIER"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/zxing/ResultMetadataType;->n:Lcom/google/zxing/ResultMetadataType;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/google/zxing/ResultMetadataType;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lcom/google/zxing/ResultMetadataType;->o:[Lcom/google/zxing/ResultMetadataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/ResultMetadataType;
    .registers 2

    const-class v0, Lcom/google/zxing/ResultMetadataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/ResultMetadataType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/ResultMetadataType;
    .registers 1

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->o:[Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0}, [Lcom/google/zxing/ResultMetadataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/ResultMetadataType;

    return-object v0
.end method
