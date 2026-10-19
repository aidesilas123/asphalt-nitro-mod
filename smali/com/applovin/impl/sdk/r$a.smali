###### Class com.applovin.impl.sdk.r.a (com.applovin.impl.sdk.r$a)
.class public final enum Lcom/applovin/impl/sdk/r$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/sdk/r$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aEF:Lcom/applovin/impl/sdk/r$a;

.field public static final enum aEG:Lcom/applovin/impl/sdk/r$a;

.field public static final enum aEH:Lcom/applovin/impl/sdk/r$a;

.field public static final enum aEI:Lcom/applovin/impl/sdk/r$a;

.field public static final enum aEJ:Lcom/applovin/impl/sdk/r$a;

.field public static final enum aEK:Lcom/applovin/impl/sdk/r$a;

.field public static final enum aEL:Lcom/applovin/impl/sdk/r$a;

.field public static final enum aEM:Lcom/applovin/impl/sdk/r$a;

.field public static final enum aEN:Lcom/applovin/impl/sdk/r$a;

.field public static final enum aEO:Lcom/applovin/impl/sdk/r$a;

.field private static final synthetic aEP:[Lcom/applovin/impl/sdk/r$a;


# instance fields
.field private final Jn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/applovin/impl/sdk/r$a;

    const-string v1, "ANR"

    const/4 v2, 0x0

    const-string v3, "anr"

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/r$a;->aEF:Lcom/applovin/impl/sdk/r$a;

    new-instance v1, Lcom/applovin/impl/sdk/r$a;

    const-string v3, "BLACK_VIEW"

    const/4 v4, 0x1

    const-string v5, "black_view"

    invoke-direct {v1, v3, v4, v5}, Lcom/applovin/impl/sdk/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/applovin/impl/sdk/r$a;->aEG:Lcom/applovin/impl/sdk/r$a;

    new-instance v3, Lcom/applovin/impl/sdk/r$a;

    const-string v5, "CRASH"

    const/4 v6, 0x2

    const-string v7, "crash"

    invoke-direct {v3, v5, v6, v7}, Lcom/applovin/impl/sdk/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/applovin/impl/sdk/r$a;->aEH:Lcom/applovin/impl/sdk/r$a;

    new-instance v5, Lcom/applovin/impl/sdk/r$a;

    const-string v7, "TASK_EXCEPTION"

    const/4 v8, 0x3

    const-string v9, "task_exception"

    invoke-direct {v5, v7, v8, v9}, Lcom/applovin/impl/sdk/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/applovin/impl/sdk/r$a;->aEI:Lcom/applovin/impl/sdk/r$a;

    new-instance v7, Lcom/applovin/impl/sdk/r$a;

    const-string v9, "CAUGHT_EXCEPTION"

    const/4 v10, 0x4

    const-string v11, "caught_exception"

    invoke-direct {v7, v9, v10, v11}, Lcom/applovin/impl/sdk/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/applovin/impl/sdk/r$a;->aEJ:Lcom/applovin/impl/sdk/r$a;

    new-instance v9, Lcom/applovin/impl/sdk/r$a;

    const-string v11, "WEB_VIEW_ERROR"

    const/4 v12, 0x5

    const-string v13, "web_view_error"

    invoke-direct {v9, v11, v12, v13}, Lcom/applovin/impl/sdk/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/applovin/impl/sdk/r$a;->aEK:Lcom/applovin/impl/sdk/r$a;

    new-instance v11, Lcom/applovin/impl/sdk/r$a;

    const-string v13, "INTEGRATION_ERROR"

    const/4 v14, 0x6

    const-string v15, "integration_error"

    invoke-direct {v11, v13, v14, v15}, Lcom/applovin/impl/sdk/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/applovin/impl/sdk/r$a;->aEL:Lcom/applovin/impl/sdk/r$a;

    new-instance v13, Lcom/applovin/impl/sdk/r$a;

    const-string v15, "TEMPLATE_ERROR"

    const/4 v14, 0x7

    const-string v12, "template_error"

    invoke-direct {v13, v15, v14, v12}, Lcom/applovin/impl/sdk/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/applovin/impl/sdk/r$a;->aEM:Lcom/applovin/impl/sdk/r$a;

    new-instance v12, Lcom/applovin/impl/sdk/r$a;

    const-string v15, "FILE_ERROR"

    const/16 v14, 0x8

    const-string v10, "file_error"

    invoke-direct {v12, v15, v14, v10}, Lcom/applovin/impl/sdk/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/applovin/impl/sdk/r$a;->aEN:Lcom/applovin/impl/sdk/r$a;

    new-instance v10, Lcom/applovin/impl/sdk/r$a;

    const-string v15, "NETWORK_ERROR"

    const/16 v14, 0x9

    const-string v8, "network_error"

    invoke-direct {v10, v15, v14, v8}, Lcom/applovin/impl/sdk/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/applovin/impl/sdk/r$a;->aEO:Lcom/applovin/impl/sdk/r$a;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/applovin/impl/sdk/r$a;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

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

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    sput-object v8, Lcom/applovin/impl/sdk/r$a;->aEP:[Lcom/applovin/impl/sdk/r$a;

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

    iput-object p3, p0, Lcom/applovin/impl/sdk/r$a;->Jn:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/sdk/r$a;
    .registers 2

    const-class v0, Lcom/applovin/impl/sdk/r$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/sdk/r$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/sdk/r$a;
    .registers 1

    sget-object v0, Lcom/applovin/impl/sdk/r$a;->aEP:[Lcom/applovin/impl/sdk/r$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/sdk/r$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/sdk/r$a;

    return-object v0
.end method


# virtual methods
.method public tU()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/r$a;->Jn:Ljava/lang/String;

    return-object v0
.end method
