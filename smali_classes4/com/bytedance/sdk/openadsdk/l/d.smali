###### Class com.bytedance.sdk.openadsdk.l.d (com.bytedance.sdk.openadsdk.l.d)
.class public final enum Lcom/bytedance/sdk/openadsdk/l/d;
.super Ljava/lang/Enum;
.source "NetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/l/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/l/d;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/l/d;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/l/d;

.field public static final enum d:Lcom/bytedance/sdk/openadsdk/l/d;

.field public static final enum e:Lcom/bytedance/sdk/openadsdk/l/d;

.field public static final enum f:Lcom/bytedance/sdk/openadsdk/l/d;

.field public static final enum g:Lcom/bytedance/sdk/openadsdk/l/d;

.field private static final synthetic i:[Lcom/bytedance/sdk/openadsdk/l/d;


# instance fields
.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/d;

    const-string v1, "TYPE_2G"

    const/4 v2, 0x0

    const-string v3, "2g"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/l/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/l/d;->a:Lcom/bytedance/sdk/openadsdk/l/d;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/l/d;

    const-string v3, "TYPE_3G"

    const/4 v4, 0x1

    const-string v5, "3g"

    invoke-direct {v1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/l/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/l/d;->b:Lcom/bytedance/sdk/openadsdk/l/d;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/l/d;

    const-string v5, "TYPE_4G"

    const/4 v6, 0x2

    const-string v7, "4g"

    invoke-direct {v3, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/l/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/l/d;->c:Lcom/bytedance/sdk/openadsdk/l/d;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/l/d;

    const-string v7, "TYPE_5G"

    const/4 v8, 0x3

    const-string v9, "5g"

    invoke-direct {v5, v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/l/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/bytedance/sdk/openadsdk/l/d;->d:Lcom/bytedance/sdk/openadsdk/l/d;

    new-instance v7, Lcom/bytedance/sdk/openadsdk/l/d;

    const-string v9, "TYPE_WIFI"

    const/4 v10, 0x4

    const-string v11, "wifi"

    invoke-direct {v7, v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/l/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/bytedance/sdk/openadsdk/l/d;->e:Lcom/bytedance/sdk/openadsdk/l/d;

    new-instance v9, Lcom/bytedance/sdk/openadsdk/l/d;

    const-string v11, "TYPE_MOBILE"

    const/4 v12, 0x5

    const-string v13, "mobile"

    invoke-direct {v9, v11, v12, v13}, Lcom/bytedance/sdk/openadsdk/l/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/bytedance/sdk/openadsdk/l/d;->f:Lcom/bytedance/sdk/openadsdk/l/d;

    new-instance v11, Lcom/bytedance/sdk/openadsdk/l/d;

    const-string v13, "TYPE_UNKNOWN"

    const/4 v14, 0x6

    const-string v15, "unknown"

    invoke-direct {v11, v13, v14, v15}, Lcom/bytedance/sdk/openadsdk/l/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/bytedance/sdk/openadsdk/l/d;->g:Lcom/bytedance/sdk/openadsdk/l/d;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/bytedance/sdk/openadsdk/l/d;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/bytedance/sdk/openadsdk/l/d;->i:[Lcom/bytedance/sdk/openadsdk/l/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/l/d;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/l/d;
    .registers 2

    const-class v0, Lcom/bytedance/sdk/openadsdk/l/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/l/d;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/l/d;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/l/d;->i:[Lcom/bytedance/sdk/openadsdk/l/d;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/l/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/l/d;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/d;->h:Ljava/lang/String;

    return-object v0
.end method
