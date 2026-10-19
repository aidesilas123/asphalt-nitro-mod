###### Class com.applovin.exoplayer2.common.a.ad (com.applovin.exoplayer2.common.a.ad)
.class public abstract Lcom/applovin/exoplayer2/common/a/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/common/a/ad$b;,
        Lcom/applovin/exoplayer2/common/a/ad$c;,
        Lcom/applovin/exoplayer2/common/a/ad$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/common/a/ad$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/ad;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/ad$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK0;>;)",
            "Lcom/applovin/exoplayer2/common/a/ad$c<",
            "TK0;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/applovin/exoplayer2/common/a/ad$2;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/a/ad$2;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static gI()Lcom/applovin/exoplayer2/common/a/ad$c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/ad$c<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ai;->gP()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/ad;->a(Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/ad$c;

    move-result-object v0

    return-object v0
.end method

###### Class com.applovin.exoplayer2.common.a.ad.AnonymousClass1 (com.applovin.exoplayer2.common.a.ad$1)
.class Lcom/applovin/exoplayer2/common/a/ad$1;
.super Lcom/applovin/exoplayer2/common/a/ad$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/a/ad$c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic qH:I


# virtual methods
.method gJ()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/ad$1;->qH:I

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/aj;->bn(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class com.applovin.exoplayer2.common.a.ad.AnonymousClass2 (com.applovin.exoplayer2.common.a.ad$2)
.class Lcom/applovin/exoplayer2/common/a/ad$2;
.super Lcom/applovin/exoplayer2/common/a/ad$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/common/a/ad;->a(Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/ad$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/a/ad$c<",
        "TK0;>;"
    }
.end annotation


# instance fields
.field final synthetic qI:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/ad$2;->qI:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/ad$c;-><init>()V

    return-void
.end method


# virtual methods
.method gJ()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/ad$2;->qI:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

###### Class com.applovin.exoplayer2.common.a.ad.a (com.applovin.exoplayer2.common.a.ad$a)
.class final Lcom/applovin/exoplayer2/common/a/ad$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/applovin/exoplayer2/common/base/Supplier<",
        "Ljava/util/List<",
        "TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final qJ:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/common/a/j;->a(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/common/a/ad$a;->qJ:I

    return-void
.end method


# virtual methods
.method public gK()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/ad$a;->qJ:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/ad$a;->gK()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.applovin.exoplayer2.common.a.ad.b (com.applovin.exoplayer2.common.a.ad$b)
.class public abstract Lcom/applovin/exoplayer2/common/a/ad$b;
.super Lcom/applovin/exoplayer2/common/a/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/exoplayer2/common/a/ad<",
        "TK0;TV0;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/common/a/ad;-><init>(Lcom/applovin/exoplayer2/common/a/ad$1;)V

    return-void
.end method


# virtual methods
.method public abstract gL()Lcom/applovin/exoplayer2/common/a/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/applovin/exoplayer2/common/a/z<",
            "TK;TV;>;"
        }
    .end annotation
.end method

###### Class com.applovin.exoplayer2.common.a.ad.c (com.applovin.exoplayer2.common.a.ad$c)
.class public abstract Lcom/applovin/exoplayer2/common/a/ad$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bm(I)Lcom/applovin/exoplayer2/common/a/ad$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/applovin/exoplayer2/common/a/ad$b<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/common/a/j;->a(ILjava/lang/String;)I

    new-instance v0, Lcom/applovin/exoplayer2/common/a/ad$c$1;

    invoke-direct {v0, p0, p1}, Lcom/applovin/exoplayer2/common/a/ad$c$1;-><init>(Lcom/applovin/exoplayer2/common/a/ad$c;I)V

    return-object v0
.end method

.method abstract gJ()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public gM()Lcom/applovin/exoplayer2/common/a/ad$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/ad$b<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/common/a/ad$c;->bm(I)Lcom/applovin/exoplayer2/common/a/ad$b;

    move-result-object v0

    return-object v0
.end method

###### Class com.applovin.exoplayer2.common.a.ad.c.AnonymousClass1 (com.applovin.exoplayer2.common.a.ad$c$1)
.class Lcom/applovin/exoplayer2/common/a/ad$c$1;
.super Lcom/applovin/exoplayer2/common/a/ad$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/common/a/ad$c;->bm(I)Lcom/applovin/exoplayer2/common/a/ad$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/a/ad$b<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic qK:I

.field final synthetic qL:Lcom/applovin/exoplayer2/common/a/ad$c;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/ad$c;I)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/ad$c$1;->qL:Lcom/applovin/exoplayer2/common/a/ad$c;

    iput p2, p0, Lcom/applovin/exoplayer2/common/a/ad$c$1;->qK:I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/ad$b;-><init>()V

    return-void
.end method


# virtual methods
.method public gL()Lcom/applovin/exoplayer2/common/a/z;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/applovin/exoplayer2/common/a/z<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/ad$c$1;->qL:Lcom/applovin/exoplayer2/common/a/ad$c;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/ad$c;->gJ()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/applovin/exoplayer2/common/a/ad$a;

    iget v2, p0, Lcom/applovin/exoplayer2/common/a/ad$c$1;->qK:I

    invoke-direct {v1, v2}, Lcom/applovin/exoplayer2/common/a/ad$a;-><init>(I)V

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/common/a/ae;->a(Ljava/util/Map;Lcom/applovin/exoplayer2/common/base/Supplier;)Lcom/applovin/exoplayer2/common/a/z;

    move-result-object v0

    return-object v0
.end method
