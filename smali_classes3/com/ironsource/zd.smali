###### Class com.json.zd (com.ironsource.zd)
.class abstract Lcom/ironsource/zd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/v;


# direct methods
.method public constructor <init>(Lcom/ironsource/v;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/zd;->a:Lcom/ironsource/v;

    return-void
.end method


# virtual methods
.method protected a(Lcom/ironsource/t;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method protected b(Lcom/ironsource/t;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/zd;->a:Lcom/ironsource/v;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/v;->d(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method protected c(Lcom/ironsource/t;Ljava/util/Map;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/zd;->a:Lcom/ironsource/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ironsource/v;->e(Lcom/ironsource/t;Ljava/util/Map;J)V

    return-void
.end method
