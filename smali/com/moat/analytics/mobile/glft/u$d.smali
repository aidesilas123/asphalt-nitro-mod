###### Class com.moat.analytics.mobile.glft.u.d (com.moat.analytics.mobile.glft.u$d)
.class final enum Lcom/moat/analytics/mobile/glft/u$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moat/analytics/mobile/glft/u$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moat/analytics/mobile/glft/u$d;

.field public static final enum b:Lcom/moat/analytics/mobile/glft/u$d;

.field private static final synthetic c:[Lcom/moat/analytics/mobile/glft/u$d;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/moat/analytics/mobile/glft/u$d;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/glft/u$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/glft/u$d;->a:Lcom/moat/analytics/mobile/glft/u$d;

    new-instance v1, Lcom/moat/analytics/mobile/glft/u$d;

    const-string v3, "ON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/moat/analytics/mobile/glft/u$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/moat/analytics/mobile/glft/u$d;->b:Lcom/moat/analytics/mobile/glft/u$d;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/moat/analytics/mobile/glft/u$d;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/moat/analytics/mobile/glft/u$d;->c:[Lcom/moat/analytics/mobile/glft/u$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/u$d;
    .registers 2

    const-class v0, Lcom/moat/analytics/mobile/glft/u$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moat/analytics/mobile/glft/u$d;

    return-object p0
.end method

.method public static values()[Lcom/moat/analytics/mobile/glft/u$d;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/glft/u$d;->c:[Lcom/moat/analytics/mobile/glft/u$d;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/glft/u$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/glft/u$d;

    return-object v0
.end method
