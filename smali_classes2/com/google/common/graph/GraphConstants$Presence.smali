###### Class com.google.common.graph.GraphConstants$Presence (com.google.common.graph.GraphConstants$Presence)
.class final enum Lcom/google/common/graph/GraphConstants$Presence;
.super Ljava/lang/Enum;
.source "GraphConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/GraphConstants$Presence;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/graph/GraphConstants$Presence;

.field private static final synthetic b:[Lcom/google/common/graph/GraphConstants$Presence;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/graph/GraphConstants$Presence;

    const-string v1, "EDGE_EXISTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/GraphConstants$Presence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/GraphConstants$Presence;->a:Lcom/google/common/graph/GraphConstants$Presence;

    invoke-static {}, Lcom/google/common/graph/GraphConstants$Presence;->e()[Lcom/google/common/graph/GraphConstants$Presence;

    move-result-object v0

    sput-object v0, Lcom/google/common/graph/GraphConstants$Presence;->b:[Lcom/google/common/graph/GraphConstants$Presence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/graph/GraphConstants$Presence;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/graph/GraphConstants$Presence;

    sget-object v1, Lcom/google/common/graph/GraphConstants$Presence;->a:Lcom/google/common/graph/GraphConstants$Presence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/graph/GraphConstants$Presence;
    .registers 2

    const-class v0, Lcom/google/common/graph/GraphConstants$Presence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/GraphConstants$Presence;

    return-object p0
.end method

.method public static values()[Lcom/google/common/graph/GraphConstants$Presence;
    .registers 1

    sget-object v0, Lcom/google/common/graph/GraphConstants$Presence;->b:[Lcom/google/common/graph/GraphConstants$Presence;

    invoke-virtual {v0}, [Lcom/google/common/graph/GraphConstants$Presence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/graph/GraphConstants$Presence;

    return-object v0
.end method
