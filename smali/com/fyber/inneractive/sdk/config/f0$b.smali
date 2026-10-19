###### Class com.fyber.inneractive.sdk.config.f0.b (com.fyber.inneractive.sdk.config.f0$b)
.class public final enum Lcom/fyber/inneractive/sdk/config/f0$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/config/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/config/f0$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/config/f0$b;

.field public static final enum APP_INFO:Lcom/fyber/inneractive/sdk/config/f0$b;

.field public static final enum COMPANION:Lcom/fyber/inneractive/sdk/config/f0$b;

.field public static final enum CTA_BUTTON:Lcom/fyber/inneractive/sdk/config/f0$b;

.field public static final enum NO_CLICK:Lcom/fyber/inneractive/sdk/config/f0$b;

.field public static final enum VIDEO:Lcom/fyber/inneractive/sdk/config/f0$b;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/fyber/inneractive/sdk/config/f0$b;

    const-string v1, "NO_CLICK"

    const/4 v2, 0x0

    const-string v3, "0"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/config/f0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/config/f0$b;->NO_CLICK:Lcom/fyber/inneractive/sdk/config/f0$b;

    new-instance v1, Lcom/fyber/inneractive/sdk/config/f0$b;

    const-string v3, "CTA_BUTTON"

    const/4 v4, 0x1

    const-string v5, "1"

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/config/f0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fyber/inneractive/sdk/config/f0$b;->CTA_BUTTON:Lcom/fyber/inneractive/sdk/config/f0$b;

    new-instance v3, Lcom/fyber/inneractive/sdk/config/f0$b;

    const-string v5, "COMPANION"

    const/4 v6, 0x2

    const-string v7, "2"

    invoke-direct {v3, v5, v6, v7}, Lcom/fyber/inneractive/sdk/config/f0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fyber/inneractive/sdk/config/f0$b;->COMPANION:Lcom/fyber/inneractive/sdk/config/f0$b;

    new-instance v5, Lcom/fyber/inneractive/sdk/config/f0$b;

    const-string v7, "VIDEO"

    const/4 v8, 0x3

    const-string v9, "3"

    invoke-direct {v5, v7, v8, v9}, Lcom/fyber/inneractive/sdk/config/f0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/fyber/inneractive/sdk/config/f0$b;->VIDEO:Lcom/fyber/inneractive/sdk/config/f0$b;

    new-instance v7, Lcom/fyber/inneractive/sdk/config/f0$b;

    const-string v9, "APP_INFO"

    const/4 v10, 0x4

    const-string v11, "4"

    invoke-direct {v7, v9, v10, v11}, Lcom/fyber/inneractive/sdk/config/f0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/fyber/inneractive/sdk/config/f0$b;->APP_INFO:Lcom/fyber/inneractive/sdk/config/f0$b;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/fyber/inneractive/sdk/config/f0$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/fyber/inneractive/sdk/config/f0$b;->$VALUES:[Lcom/fyber/inneractive/sdk/config/f0$b;

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

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/config/f0$b;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/config/f0$b;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/config/f0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/config/f0$b;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/config/f0$b;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/config/f0$b;->$VALUES:[Lcom/fyber/inneractive/sdk/config/f0$b;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/config/f0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/config/f0$b;

    return-object v0
.end method
