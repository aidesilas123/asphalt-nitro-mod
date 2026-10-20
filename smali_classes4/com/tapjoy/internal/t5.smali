###### Class com.tapjoy.internal.t5 (com.tapjoy.internal.t5)
.class public final Lcom/tapjoy/internal/t5;
.super Lcom/tapjoy/internal/q4;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/h5;

    invoke-direct {v0}, Lcom/tapjoy/internal/h5;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/b4;)V
    .registers 7

    invoke-direct {p0}, Lcom/tapjoy/internal/q4;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/t5;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->a()V

    const/4 v0, 0x0

    move-object v1, v0

    :goto_f
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layouts"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v2, p0, Lcom/tapjoy/internal/t5;->a:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/o2;->a:Lcom/tapjoy/internal/f2;

    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/b4;->c(Ljava/util/ArrayList;Lcom/tapjoy/internal/x3;)V

    goto :goto_f

    :cond_29
    const-string v3, "meta"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->m()Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/t5;->b:Ljava/util/LinkedHashMap;

    goto :goto_f

    :cond_38
    const-string v3, "max_show_time"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->j()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/tapjoy/internal/t5;->c:F

    goto :goto_f

    :cond_48
    const-string v3, "ad_content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_55
    const-string v3, "redirect_url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->q()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_62
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_f

    :cond_66
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->d()V

    iget-object p1, p0, Lcom/tapjoy/internal/t5;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_9e

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_71
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/o2;

    iget-object v2, v2, Lcom/tapjoy/internal/o2;->d:Ljava/util/ArrayList;

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_85
    :goto_85
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/u0;

    iget-object v4, v3, Lcom/tapjoy/internal/u0;->j:Ljava/lang/String;

    if-nez v4, :cond_97

    iput-object v0, v3, Lcom/tapjoy/internal/u0;->j:Ljava/lang/String;

    :cond_97
    iget-object v4, v3, Lcom/tapjoy/internal/u0;->i:Ljava/lang/String;

    if-nez v4, :cond_85

    iput-object v1, v3, Lcom/tapjoy/internal/u0;->i:Ljava/lang/String;

    goto :goto_85

    :cond_9e
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/t5;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/o2;

    invoke-virtual {v1}, Lcom/tapjoy/internal/o2;->a()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_1b
    return v1
.end method
