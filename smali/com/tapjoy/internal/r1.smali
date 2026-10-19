###### Class com.tapjoy.internal.r1 (com.tapjoy.internal.r1)
.class public final enum Lcom/tapjoy/internal/r1;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/xa;


# static fields
.field public static final enum a:Lcom/tapjoy/internal/r1;

.field public static final enum b:Lcom/tapjoy/internal/r1;

.field public static final enum c:Lcom/tapjoy/internal/r1;

.field public static final enum d:Lcom/tapjoy/internal/r1;

.field public static final synthetic e:[Lcom/tapjoy/internal/r1;


# instance fields
.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/tapjoy/internal/r1;

    const-string v1, "APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tapjoy/internal/r1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/r1;->a:Lcom/tapjoy/internal/r1;

    new-instance v1, Lcom/tapjoy/internal/r1;

    const-string v3, "CAMPAIGN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tapjoy/internal/r1;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tapjoy/internal/r1;->b:Lcom/tapjoy/internal/r1;

    new-instance v3, Lcom/tapjoy/internal/r1;

    const-string v5, "CUSTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tapjoy/internal/r1;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tapjoy/internal/r1;->c:Lcom/tapjoy/internal/r1;

    new-instance v5, Lcom/tapjoy/internal/r1;

    const-string v7, "USAGES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/tapjoy/internal/r1;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tapjoy/internal/r1;->d:Lcom/tapjoy/internal/r1;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tapjoy/internal/r1;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/tapjoy/internal/r1;->e:[Lcom/tapjoy/internal/r1;

    new-instance v0, Lcom/tapjoy/internal/u5;

    invoke-direct {v0}, Lcom/tapjoy/internal/u5;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tapjoy/internal/r1;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/r1;
    .registers 2

    const-class v0, Lcom/tapjoy/internal/r1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/r1;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/r1;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/r1;->e:[Lcom/tapjoy/internal/r1;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/r1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/r1;

    return-object v0
.end method

###### Class com.tapjoy.internal.u5 (com.tapjoy.internal.u5)
.class public final Lcom/tapjoy/internal/u5;
.super Lcom/tapjoy/internal/q7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    const-class v0, Lcom/tapjoy/internal/r1;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/q7;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/tapjoy/internal/xa;

    check-cast p1, Lcom/tapjoy/internal/r1;

    iget p1, p1, Lcom/tapjoy/internal/r1;->f:I

    invoke-static {p1}, Lcom/tapjoy/internal/w5;->a(I)I

    move-result p1

    return p1
.end method

.method public final d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p1}, Lcom/tapjoy/internal/z7;->j()I

    move-result p1

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    const/4 v0, 0x0

    goto :goto_1c

    :cond_11
    sget-object v0, Lcom/tapjoy/internal/r1;->d:Lcom/tapjoy/internal/r1;

    goto :goto_1c

    :cond_14
    sget-object v0, Lcom/tapjoy/internal/r1;->c:Lcom/tapjoy/internal/r1;

    goto :goto_1c

    :cond_17
    sget-object v0, Lcom/tapjoy/internal/r1;->b:Lcom/tapjoy/internal/r1;

    goto :goto_1c

    :cond_1a
    sget-object v0, Lcom/tapjoy/internal/r1;->a:Lcom/tapjoy/internal/r1;

    :goto_1c
    if-eqz v0, :cond_1f

    return-object v0

    :cond_1f
    new-instance v0, Lcom/tapjoy/internal/h7;

    iget-object v1, p0, Lcom/tapjoy/internal/q7;->k:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/h7;-><init>(ILjava/lang/Class;)V

    throw v0
.end method

.method public final f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/tapjoy/internal/xa;

    check-cast p2, Lcom/tapjoy/internal/r1;

    iget p2, p2, Lcom/tapjoy/internal/r1;->f:I

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/w5;->e(I)V

    return-void
.end method
