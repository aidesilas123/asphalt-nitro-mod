###### Class com.google.common.collect.Multisets.g (com.google.common.collect.Multisets$g)
.class final Lcom/google/common/collect/Multisets$g;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/common/collect/c2$a<",
        "*>;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/Multisets$g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/Multisets$g;

    invoke-direct {v0}, Lcom/google/common/collect/Multisets$g;-><init>()V

    sput-object v0, Lcom/google/common/collect/Multisets$g;->a:Lcom/google/common/collect/Multisets$g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/c2$a;Lcom/google/common/collect/c2$a;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2$a<",
            "*>;",
            "Lcom/google/common/collect/c2$a<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result p2

    invoke-interface {p1}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/common/collect/c2$a;

    check-cast p2, Lcom/google/common/collect/c2$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multisets$g;->a(Lcom/google/common/collect/c2$a;Lcom/google/common/collect/c2$a;)I

    move-result p1

    return p1
.end method
