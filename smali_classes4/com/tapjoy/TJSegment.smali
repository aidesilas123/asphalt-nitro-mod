###### Class com.tapjoy.TJSegment (com.tapjoy.TJSegment)
.class public final enum Lcom/tapjoy/TJSegment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/TJSegment;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/TJSegment;

.field public static final enum b:Lcom/tapjoy/TJSegment;

.field public static final enum c:Lcom/tapjoy/TJSegment;

.field public static final enum d:Lcom/tapjoy/TJSegment;

.field public static final synthetic e:[Lcom/tapjoy/TJSegment;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/tapjoy/TJSegment;

    const/4 v1, 0x0

    const-string v2, "NON_PAYER"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJSegment;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/TJSegment;->a:Lcom/tapjoy/TJSegment;

    new-instance v2, Lcom/tapjoy/TJSegment;

    const/4 v3, 0x1

    const-string v4, "PAYER"

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TJSegment;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/tapjoy/TJSegment;->b:Lcom/tapjoy/TJSegment;

    new-instance v4, Lcom/tapjoy/TJSegment;

    const/4 v5, 0x2

    const-string v6, "VIP"

    invoke-direct {v4, v5, v6}, Lcom/tapjoy/TJSegment;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/tapjoy/TJSegment;->c:Lcom/tapjoy/TJSegment;

    new-instance v6, Lcom/tapjoy/TJSegment;

    const/4 v7, 0x3

    const-string v8, "UNKNOWN"

    invoke-direct {v6, v7, v8}, Lcom/tapjoy/TJSegment;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/tapjoy/TJSegment;->d:Lcom/tapjoy/TJSegment;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/tapjoy/TJSegment;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/tapjoy/TJSegment;->e:[Lcom/tapjoy/TJSegment;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/tapjoy/TJSegment;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    sget-object p0, Lcom/tapjoy/TJSegment;->d:Lcom/tapjoy/TJSegment;

    return-object p0

    :cond_b
    sget-object p0, Lcom/tapjoy/TJSegment;->c:Lcom/tapjoy/TJSegment;

    return-object p0

    :cond_e
    sget-object p0, Lcom/tapjoy/TJSegment;->b:Lcom/tapjoy/TJSegment;

    return-object p0

    :cond_11
    sget-object p0, Lcom/tapjoy/TJSegment;->a:Lcom/tapjoy/TJSegment;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/TJSegment;
    .registers 2

    const-class v0, Lcom/tapjoy/TJSegment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJSegment;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/TJSegment;
    .registers 1

    sget-object v0, Lcom/tapjoy/TJSegment;->e:[Lcom/tapjoy/TJSegment;

    invoke-virtual {v0}, [Lcom/tapjoy/TJSegment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/TJSegment;

    return-object v0
.end method


# virtual methods
.method public e()I
    .registers 4

    sget-object v0, Lcom/tapjoy/internal/m1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v0, -0x1

    return v0

    :cond_13
    return v2

    :cond_14
    return v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/TJSegment;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
