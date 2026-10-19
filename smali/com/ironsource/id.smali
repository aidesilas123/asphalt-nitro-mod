###### Class com.json.id (com.ironsource.id)
.class public final enum Lcom/ironsource/id;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/id;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/ironsource/id;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "a",
        "b",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/id;

.field public static final enum b:Lcom/ironsource/id;

.field private static final synthetic c:[Lcom/ironsource/id;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/ironsource/id;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/id;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/id;->a:Lcom/ironsource/id;

    new-instance v0, Lcom/ironsource/id;

    const-string v1, "BIDDER_SENSITIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/id;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/id;->b:Lcom/ironsource/id;

    invoke-static {}, Lcom/ironsource/id;->e()[Lcom/ironsource/id;

    move-result-object v0

    sput-object v0, Lcom/ironsource/id;->c:[Lcom/ironsource/id;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic e()[Lcom/ironsource/id;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ironsource/id;

    sget-object v1, Lcom/ironsource/id;->a:Lcom/ironsource/id;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/id;->b:Lcom/ironsource/id;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/id;
    .registers 2

    const-class v0, Lcom/ironsource/id;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/id;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/id;
    .registers 1

    sget-object v0, Lcom/ironsource/id;->c:[Lcom/ironsource/id;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/id;

    return-object v0
.end method
