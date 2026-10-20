###### Class com.google.zxing.client.result.ParsedResultType (com.google.zxing.client.result.ParsedResultType)
.class public final enum Lcom/google/zxing/client/result/ParsedResultType;
.super Ljava/lang/Enum;
.source "ParsedResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/client/result/ParsedResultType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum b:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum c:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum d:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum e:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum f:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum g:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum h:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum i:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum j:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum k:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final enum l:Lcom/google/zxing/client/result/ParsedResultType;

.field private static final synthetic m:[Lcom/google/zxing/client/result/ParsedResultType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "ADDRESSBOOK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->a:Lcom/google/zxing/client/result/ParsedResultType;

    new-instance v1, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v3, "EMAIL_ADDRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/client/result/ParsedResultType;->b:Lcom/google/zxing/client/result/ParsedResultType;

    new-instance v3, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v5, "PRODUCT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/client/result/ParsedResultType;->c:Lcom/google/zxing/client/result/ParsedResultType;

    new-instance v5, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v7, "URI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/client/result/ParsedResultType;->d:Lcom/google/zxing/client/result/ParsedResultType;

    new-instance v7, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v9, "TEXT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/zxing/client/result/ParsedResultType;->e:Lcom/google/zxing/client/result/ParsedResultType;

    new-instance v9, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v11, "GEO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/zxing/client/result/ParsedResultType;->f:Lcom/google/zxing/client/result/ParsedResultType;

    new-instance v11, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v13, "TEL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/zxing/client/result/ParsedResultType;->g:Lcom/google/zxing/client/result/ParsedResultType;

    new-instance v13, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v15, "SMS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/zxing/client/result/ParsedResultType;->h:Lcom/google/zxing/client/result/ParsedResultType;

    new-instance v15, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v14, "CALENDAR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/zxing/client/result/ParsedResultType;->i:Lcom/google/zxing/client/result/ParsedResultType;

    new-instance v14, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v12, "WIFI"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/zxing/client/result/ParsedResultType;->j:Lcom/google/zxing/client/result/ParsedResultType;

    new-instance v12, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v10, "ISBN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/zxing/client/result/ParsedResultType;->k:Lcom/google/zxing/client/result/ParsedResultType;

    new-instance v10, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v8, "VIN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/zxing/client/result/ParsedResultType;->l:Lcom/google/zxing/client/result/ParsedResultType;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/google/zxing/client/result/ParsedResultType;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lcom/google/zxing/client/result/ParsedResultType;->m:[Lcom/google/zxing/client/result/ParsedResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/client/result/ParsedResultType;
    .registers 2

    const-class v0, Lcom/google/zxing/client/result/ParsedResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/client/result/ParsedResultType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/client/result/ParsedResultType;
    .registers 1

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->m:[Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v0}, [Lcom/google/zxing/client/result/ParsedResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/client/result/ParsedResultType;

    return-object v0
.end method
