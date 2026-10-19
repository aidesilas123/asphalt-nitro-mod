###### Class com.json.oa (com.ironsource.oa)
.class public final enum Lcom/ironsource/oa;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/oa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/ironsource/oa;

.field public static final enum c:Lcom/ironsource/oa;

.field private static final synthetic d:[Lcom/ironsource/oa;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/ironsource/oa;

    const-string v1, "PER_DAY"

    const/4 v2, 0x0

    const-string v3, "d"

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/oa;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/oa;->b:Lcom/ironsource/oa;

    new-instance v1, Lcom/ironsource/oa;

    const-string v3, "PER_HOUR"

    const/4 v4, 0x1

    const-string v5, "h"

    invoke-direct {v1, v3, v4, v5}, Lcom/ironsource/oa;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/ironsource/oa;->c:Lcom/ironsource/oa;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ironsource/oa;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/ironsource/oa;->d:[Lcom/ironsource/oa;

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

    iput-object p3, p0, Lcom/ironsource/oa;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/oa;
    .registers 2

    const-class v0, Lcom/ironsource/oa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/oa;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/oa;
    .registers 1

    sget-object v0, Lcom/ironsource/oa;->d:[Lcom/ironsource/oa;

    invoke-virtual {v0}, [Lcom/ironsource/oa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/oa;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/oa;->a:Ljava/lang/String;

    return-object v0
.end method
