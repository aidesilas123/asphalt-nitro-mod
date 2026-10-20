###### Class com.applovin.impl.b.n.AnonymousClass1 (com.applovin.impl.b.n$1)
.class Lcom/applovin/impl/b/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/b/n;->a(Lcom/applovin/impl/b/n$a;J)Lcom/applovin/impl/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/applovin/impl/b/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aYc:Lcom/applovin/impl/b/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/b/n;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/b/n$1;->aYc:Lcom/applovin/impl/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/b/o;Lcom/applovin/impl/b/o;)I
    .registers 5

    invoke-virtual {p1}, Lcom/applovin/impl/b/o;->MK()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/applovin/impl/b/o;->MK()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/applovin/impl/b/o;

    check-cast p2, Lcom/applovin/impl/b/o;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/b/n$1;->a(Lcom/applovin/impl/b/o;Lcom/applovin/impl/b/o;)I

    move-result p1

    return p1
.end method
