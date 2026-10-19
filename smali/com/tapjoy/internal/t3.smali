###### Class com.tapjoy.internal.t3 (com.tapjoy.internal.t3)
.class public final Lcom/tapjoy/internal/t3;
.super Lcom/tapjoy/internal/q4;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tapjoy/internal/n3;

.field public final b:Lcom/tapjoy/internal/n3;

.field public final c:Lcom/tapjoy/internal/n3;

.field public final d:Landroid/graphics/Point;

.field public final e:Lcom/tapjoy/internal/n3;

.field public final f:Lcom/tapjoy/internal/n3;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/tapjoy/internal/b;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/LinkedHashMap;

.field public final l:Lcom/tapjoy/internal/g8;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/l3;

    invoke-direct {v0}, Lcom/tapjoy/internal/l3;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/b4;)V
    .registers 8

    invoke-direct {p0}, Lcom/tapjoy/internal/q4;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/t3;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/t3;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->a()V

    const/4 v0, 0x0

    move-object v1, v0

    :goto_16
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v2

    if-eqz v2, :cond_176

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "frame"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "landscape"

    const-string v5, "portrait"

    if-eqz v3, :cond_89

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->a()V

    :goto_2f
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    sget-object v2, Lcom/tapjoy/internal/n3;->b:Lcom/tapjoy/internal/e3;

    invoke-virtual {p1, v2}, Lcom/tapjoy/internal/b4;->b(Lcom/tapjoy/internal/x3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/n3;

    iput-object v2, p0, Lcom/tapjoy/internal/t3;->a:Lcom/tapjoy/internal/n3;

    goto :goto_2f

    :cond_4a
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    sget-object v2, Lcom/tapjoy/internal/n3;->b:Lcom/tapjoy/internal/e3;

    invoke-virtual {p1, v2}, Lcom/tapjoy/internal/b4;->b(Lcom/tapjoy/internal/x3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/n3;

    iput-object v2, p0, Lcom/tapjoy/internal/t3;->b:Lcom/tapjoy/internal/n3;

    goto :goto_2f

    :cond_5b
    const-string v3, "close_button"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    sget-object v2, Lcom/tapjoy/internal/n3;->b:Lcom/tapjoy/internal/e3;

    invoke-virtual {p1, v2}, Lcom/tapjoy/internal/b4;->b(Lcom/tapjoy/internal/x3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/n3;

    iput-object v2, p0, Lcom/tapjoy/internal/t3;->c:Lcom/tapjoy/internal/n3;

    goto :goto_2f

    :cond_6e
    const-string v3, "close_button_offset"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    sget-object v2, Lcom/tapjoy/internal/g;->a:Lcom/tapjoy/internal/b9;

    invoke-virtual {p1, v2}, Lcom/tapjoy/internal/b4;->b(Lcom/tapjoy/internal/x3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iput-object v2, p0, Lcom/tapjoy/internal/t3;->d:Landroid/graphics/Point;

    goto :goto_2f

    :cond_81
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_2f

    :cond_85
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->d()V

    goto :goto_16

    :cond_89
    const-string v3, "creative"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->a()V

    :goto_94
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    sget-object v2, Lcom/tapjoy/internal/n3;->b:Lcom/tapjoy/internal/e3;

    invoke-virtual {p1, v2}, Lcom/tapjoy/internal/b4;->b(Lcom/tapjoy/internal/x3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/n3;

    iput-object v2, p0, Lcom/tapjoy/internal/t3;->e:Lcom/tapjoy/internal/n3;

    goto :goto_94

    :cond_af
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    sget-object v2, Lcom/tapjoy/internal/n3;->b:Lcom/tapjoy/internal/e3;

    invoke-virtual {p1, v2}, Lcom/tapjoy/internal/b4;->b(Lcom/tapjoy/internal/x3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/n3;

    iput-object v2, p0, Lcom/tapjoy/internal/t3;->f:Lcom/tapjoy/internal/n3;

    goto :goto_94

    :cond_c0
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_94

    :cond_c4
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->d()V

    goto/16 :goto_16

    :cond_c9
    const-string v3, "url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->q()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/t3;->g:Ljava/lang/String;

    goto/16 :goto_16

    :cond_d9
    invoke-static {v2}, Lcom/tapjoy/internal/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e7

    invoke-static {v2, p1}, Lcom/tapjoy/internal/b;->a(Ljava/lang/String;Lcom/tapjoy/internal/b4;)Lcom/tapjoy/internal/b;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/t3;->h:Lcom/tapjoy/internal/b;

    goto/16 :goto_16

    :cond_e7
    const-string v3, "mappings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_121

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->a()V

    :goto_f2
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v2

    if-eqz v2, :cond_11c

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10a

    iget-object v2, p0, Lcom/tapjoy/internal/t3;->i:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/j9;->a:Lcom/tapjoy/internal/y8;

    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/b4;->c(Ljava/util/ArrayList;Lcom/tapjoy/internal/x3;)V

    goto :goto_f2

    :cond_10a
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    iget-object v2, p0, Lcom/tapjoy/internal/t3;->j:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/j9;->a:Lcom/tapjoy/internal/y8;

    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/b4;->c(Ljava/util/ArrayList;Lcom/tapjoy/internal/x3;)V

    goto :goto_f2

    :cond_118
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_f2

    :cond_11c
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->d()V

    goto/16 :goto_16

    :cond_121
    const-string v3, "meta"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_131

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->m()Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/t3;->k:Ljava/util/LinkedHashMap;

    goto/16 :goto_16

    :cond_131
    const-string v3, "ttl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->j()D

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    goto/16 :goto_16

    :cond_141
    const-string v3, "no_more_today"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_155

    sget-object v2, Lcom/tapjoy/internal/g8;->a:Lcom/tapjoy/internal/v4;

    invoke-virtual {p1, v2}, Lcom/tapjoy/internal/b4;->b(Lcom/tapjoy/internal/x3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/g8;

    iput-object v2, p0, Lcom/tapjoy/internal/t3;->l:Lcom/tapjoy/internal/g8;

    goto/16 :goto_16

    :cond_155
    const-string v3, "ad_content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_163

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->q()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_16

    :cond_163
    const-string v3, "redirect_url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_171

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->q()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    :cond_171
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto/16 :goto_16

    :cond_176
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->d()V

    iget-object p1, p0, Lcom/tapjoy/internal/t3;->g:Ljava/lang/String;

    if-nez p1, :cond_181

    const-string p1, ""

    iput-object p1, p0, Lcom/tapjoy/internal/t3;->g:Ljava/lang/String;

    :cond_181
    iget-object p1, p0, Lcom/tapjoy/internal/t3;->i:Ljava/util/ArrayList;

    if-eqz p1, :cond_1a2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_189
    :goto_189
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/j9;

    iget-object v3, v2, Lcom/tapjoy/internal/j9;->g:Ljava/lang/String;

    if-nez v3, :cond_19b

    iput-object v1, v2, Lcom/tapjoy/internal/j9;->g:Ljava/lang/String;

    :cond_19b
    iget-object v3, v2, Lcom/tapjoy/internal/j9;->f:Ljava/lang/String;

    if-nez v3, :cond_189

    iput-object v0, v2, Lcom/tapjoy/internal/j9;->f:Ljava/lang/String;

    goto :goto_189

    :cond_1a2
    iget-object p1, p0, Lcom/tapjoy/internal/t3;->j:Ljava/util/ArrayList;

    if-eqz p1, :cond_1c3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1aa
    :goto_1aa
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/j9;

    iget-object v3, v2, Lcom/tapjoy/internal/j9;->g:Ljava/lang/String;

    if-nez v3, :cond_1bc

    iput-object v1, v2, Lcom/tapjoy/internal/j9;->g:Ljava/lang/String;

    :cond_1bc
    iget-object v3, v2, Lcom/tapjoy/internal/j9;->f:Ljava/lang/String;

    if-nez v3, :cond_1aa

    iput-object v0, v2, Lcom/tapjoy/internal/j9;->f:Ljava/lang/String;

    goto :goto_1aa

    :cond_1c3
    return-void
.end method
