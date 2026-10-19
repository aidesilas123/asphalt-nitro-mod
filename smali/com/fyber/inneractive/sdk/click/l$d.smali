###### Class com.fyber.inneractive.sdk.click.l.d (com.fyber.inneractive.sdk.click.l$d)
.class public final enum Lcom/fyber/inneractive/sdk/click/l$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/click/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/click/l$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/click/l$d;

.field public static final enum DEEP_LINK:Lcom/fyber/inneractive/sdk/click/l$d;

.field public static final enum FAILED:Lcom/fyber/inneractive/sdk/click/l$d;

.field public static final enum INTERNAL_REDIRECT:Lcom/fyber/inneractive/sdk/click/l$d;

.field public static final enum OPENED_IN_EXTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/click/l$d;

.field public static final enum OPENED_IN_INTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/click/l$d;

.field public static final enum OPENED_USING_CHROME_NAVIGATE:Lcom/fyber/inneractive/sdk/click/l$d;

.field public static final enum OPEN_GOOGLE_STORE:Lcom/fyber/inneractive/sdk/click/l$d;

.field public static final enum OPEN_INTERNAL_STORE:Lcom/fyber/inneractive/sdk/click/l$d;

.field public static final enum OPEN_IN_EXTERNAL_APPLICATION:Lcom/fyber/inneractive/sdk/click/l$d;


# instance fields
.field public simpleName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/fyber/inneractive/sdk/click/l$d;

    const-string v1, "FAILED"

    const/4 v2, 0x0

    const-string v3, "failed"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/click/l$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/click/l$d;->FAILED:Lcom/fyber/inneractive/sdk/click/l$d;

    new-instance v1, Lcom/fyber/inneractive/sdk/click/l$d;

    const-string v3, "OPEN_GOOGLE_STORE"

    const/4 v4, 0x1

    const-string v5, "store"

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/click/l$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fyber/inneractive/sdk/click/l$d;->OPEN_GOOGLE_STORE:Lcom/fyber/inneractive/sdk/click/l$d;

    new-instance v3, Lcom/fyber/inneractive/sdk/click/l$d;

    const-string v5, "OPENED_IN_INTERNAL_BROWSER"

    const/4 v6, 0x2

    const-string v7, "internal browser"

    invoke-direct {v3, v5, v6, v7}, Lcom/fyber/inneractive/sdk/click/l$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fyber/inneractive/sdk/click/l$d;->OPENED_IN_INTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/click/l$d;

    new-instance v5, Lcom/fyber/inneractive/sdk/click/l$d;

    const-string v7, "OPENED_IN_EXTERNAL_BROWSER"

    const/4 v8, 0x3

    const-string v9, "external browser"

    invoke-direct {v5, v7, v8, v9}, Lcom/fyber/inneractive/sdk/click/l$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/fyber/inneractive/sdk/click/l$d;->OPENED_IN_EXTERNAL_BROWSER:Lcom/fyber/inneractive/sdk/click/l$d;

    new-instance v7, Lcom/fyber/inneractive/sdk/click/l$d;

    const-string v9, "INTERNAL_REDIRECT"

    const/4 v10, 0x4

    const-string v11, "internal redirect"

    invoke-direct {v7, v9, v10, v11}, Lcom/fyber/inneractive/sdk/click/l$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/fyber/inneractive/sdk/click/l$d;->INTERNAL_REDIRECT:Lcom/fyber/inneractive/sdk/click/l$d;

    new-instance v9, Lcom/fyber/inneractive/sdk/click/l$d;

    const-string v11, "OPEN_IN_EXTERNAL_APPLICATION"

    const/4 v12, 0x5

    const-string v13, "external app"

    invoke-direct {v9, v11, v12, v13}, Lcom/fyber/inneractive/sdk/click/l$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/fyber/inneractive/sdk/click/l$d;->OPEN_IN_EXTERNAL_APPLICATION:Lcom/fyber/inneractive/sdk/click/l$d;

    new-instance v11, Lcom/fyber/inneractive/sdk/click/l$d;

    const-string v13, "DEEP_LINK"

    const/4 v14, 0x6

    const-string v15, "deep link"

    invoke-direct {v11, v13, v14, v15}, Lcom/fyber/inneractive/sdk/click/l$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/fyber/inneractive/sdk/click/l$d;->DEEP_LINK:Lcom/fyber/inneractive/sdk/click/l$d;

    new-instance v13, Lcom/fyber/inneractive/sdk/click/l$d;

    const-string v15, "OPENED_USING_CHROME_NAVIGATE"

    const/4 v14, 0x7

    const-string v12, "chrome navigate"

    invoke-direct {v13, v15, v14, v12}, Lcom/fyber/inneractive/sdk/click/l$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/fyber/inneractive/sdk/click/l$d;->OPENED_USING_CHROME_NAVIGATE:Lcom/fyber/inneractive/sdk/click/l$d;

    new-instance v12, Lcom/fyber/inneractive/sdk/click/l$d;

    const-string v15, "OPEN_INTERNAL_STORE"

    const/16 v14, 0x8

    const-string v10, "internal store"

    invoke-direct {v12, v15, v14, v10}, Lcom/fyber/inneractive/sdk/click/l$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/fyber/inneractive/sdk/click/l$d;->OPEN_INTERNAL_STORE:Lcom/fyber/inneractive/sdk/click/l$d;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/fyber/inneractive/sdk/click/l$d;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lcom/fyber/inneractive/sdk/click/l$d;->$VALUES:[Lcom/fyber/inneractive/sdk/click/l$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/click/l$d;->simpleName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/click/l$d;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/click/l$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/click/l$d;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/click/l$d;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/click/l$d;->$VALUES:[Lcom/fyber/inneractive/sdk/click/l$d;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/click/l$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/click/l$d;

    return-object v0
.end method
