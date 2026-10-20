###### Class com.google.common.hash.Funnels.UnencodedCharsFunnel (com.google.common.hash.Funnels$UnencodedCharsFunnel)
.class final enum Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;
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
    name = "UnencodedCharsFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;",
        ">;",
        "Lcom/google/common/hash/k<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

.field private static final synthetic b:[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->a:Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    invoke-static {}, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->e()[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->b:[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    sget-object v1, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->a:Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;
    .registers 2

    const-class v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;
    .registers 1

    sget-object v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->b:[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/CharSequence;Lcom/google/common/hash/v;)V
    .registers 3

    invoke-interface {p2, p1}, Lcom/google/common/hash/v;->c(Ljava/lang/CharSequence;)Lcom/google/common/hash/v;

    return-void
.end method

.method public bridge synthetic o(Ljava/lang/Object;Lcom/google/common/hash/v;)V
    .registers 3

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->f(Ljava/lang/CharSequence;Lcom/google/common/hash/v;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Funnels.unencodedCharsFunnel()"

    return-object v0
.end method
