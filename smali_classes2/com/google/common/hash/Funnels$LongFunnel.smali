###### Class com.google.common.hash.Funnels.LongFunnel (com.google.common.hash.Funnels$LongFunnel)
.class final enum Lcom/google/common/hash/Funnels$LongFunnel;
.super Ljava/lang/Enum;
.source "Funnels.java"

# interfaces
.implements Lcom/google/common/hash/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LongFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/Funnels$LongFunnel;",
        ">;",
        "Lcom/google/common/hash/k<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/Funnels$LongFunnel;

.field private static final synthetic b:[Lcom/google/common/hash/Funnels$LongFunnel;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/hash/Funnels$LongFunnel;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Funnels$LongFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/Funnels$LongFunnel;->a:Lcom/google/common/hash/Funnels$LongFunnel;

    invoke-static {}, Lcom/google/common/hash/Funnels$LongFunnel;->e()[Lcom/google/common/hash/Funnels$LongFunnel;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Funnels$LongFunnel;->b:[Lcom/google/common/hash/Funnels$LongFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/hash/Funnels$LongFunnel;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/Funnels$LongFunnel;

    sget-object v1, Lcom/google/common/hash/Funnels$LongFunnel;->a:Lcom/google/common/hash/Funnels$LongFunnel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$LongFunnel;
    .registers 2

    const-class v0, Lcom/google/common/hash/Funnels$LongFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/Funnels$LongFunnel;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$LongFunnel;
    .registers 1

    sget-object v0, Lcom/google/common/hash/Funnels$LongFunnel;->b:[Lcom/google/common/hash/Funnels$LongFunnel;

    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$LongFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Funnels$LongFunnel;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Long;Lcom/google/common/hash/v;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/hash/v;->putLong(J)Lcom/google/common/hash/v;

    return-void
.end method

.method public bridge synthetic o(Ljava/lang/Object;Lcom/google/common/hash/v;)V
    .registers 3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$LongFunnel;->f(Ljava/lang/Long;Lcom/google/common/hash/v;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Funnels.longFunnel()"

    return-object v0
.end method
