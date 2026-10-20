###### Class com.tapjoy.TJStatus (com.tapjoy.TJStatus)
.class public final enum Lcom/tapjoy/TJStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/TJStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/TJStatus;

.field public static final enum b:Lcom/tapjoy/TJStatus;

.field public static final enum c:Lcom/tapjoy/TJStatus;

.field public static final synthetic d:[Lcom/tapjoy/TJStatus;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/tapjoy/TJStatus;

    const/4 v1, 0x0

    const-string v2, "FALSE"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/TJStatus;->a:Lcom/tapjoy/TJStatus;

    new-instance v2, Lcom/tapjoy/TJStatus;

    const/4 v3, 0x1

    const-string v4, "TRUE"

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TJStatus;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/tapjoy/TJStatus;->b:Lcom/tapjoy/TJStatus;

    new-instance v4, Lcom/tapjoy/TJStatus;

    const/4 v5, 0x2

    const-string v6, "UNKNOWN"

    invoke-direct {v4, v5, v6}, Lcom/tapjoy/TJStatus;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/tapjoy/TJStatus;->c:Lcom/tapjoy/TJStatus;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/tapjoy/TJStatus;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/tapjoy/TJStatus;->d:[Lcom/tapjoy/TJStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/tapjoy/TJStatus;
    .registers 2

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    sget-object p0, Lcom/tapjoy/TJStatus;->c:Lcom/tapjoy/TJStatus;

    return-object p0

    :cond_8
    sget-object p0, Lcom/tapjoy/TJStatus;->b:Lcom/tapjoy/TJStatus;

    return-object p0

    :cond_b
    sget-object p0, Lcom/tapjoy/TJStatus;->a:Lcom/tapjoy/TJStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/TJStatus;
    .registers 2

    const-class v0, Lcom/tapjoy/TJStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJStatus;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/TJStatus;
    .registers 1

    sget-object v0, Lcom/tapjoy/TJStatus;->d:[Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, [Lcom/tapjoy/TJStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/TJStatus;

    return-object v0
.end method


# virtual methods
.method public e()I
    .registers 4

    sget-object v0, Lcom/tapjoy/internal/d6;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    return v2

    :cond_f
    return v1

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/TJStatus;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
