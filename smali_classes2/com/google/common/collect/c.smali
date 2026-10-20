###### Class com.google.common.collect.c (com.google.common.collect.c)
.class public final synthetic Lcom/google/common/collect/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/f;


# static fields
.field public static final synthetic a:Lcom/google/common/collect/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/c;

    invoke-direct {v0}, Lcom/google/common/collect/c;-><init>()V

    sput-object v0, Lcom/google/common/collect/c;->a:Lcom/google/common/collect/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/google/common/collect/TreeBasedTable;->K(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
