###### Class com.moat.analytics.mobile.glft.f.a (com.moat.analytics.mobile.glft.f$a)
.class final enum Lcom/moat/analytics/mobile/glft/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moat/analytics/mobile/glft/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moat/analytics/mobile/glft/f$a;

.field public static final enum b:Lcom/moat/analytics/mobile/glft/f$a;

.field private static final synthetic c:[Lcom/moat/analytics/mobile/glft/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/moat/analytics/mobile/glft/f$a;

    const-string v1, "DISPLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/glft/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/glft/f$a;->a:Lcom/moat/analytics/mobile/glft/f$a;

    new-instance v1, Lcom/moat/analytics/mobile/glft/f$a;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/moat/analytics/mobile/glft/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/moat/analytics/mobile/glft/f$a;->b:Lcom/moat/analytics/mobile/glft/f$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/moat/analytics/mobile/glft/f$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/moat/analytics/mobile/glft/f$a;->c:[Lcom/moat/analytics/mobile/glft/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/f$a;
    .registers 2

    const-class v0, Lcom/moat/analytics/mobile/glft/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moat/analytics/mobile/glft/f$a;

    return-object p0
.end method

.method public static values()[Lcom/moat/analytics/mobile/glft/f$a;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/glft/f$a;->c:[Lcom/moat/analytics/mobile/glft/f$a;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/glft/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/glft/f$a;

    return-object v0
.end method
