###### Class com.iab.omid.library.jungroup.adsession.d (com.iab.omid.library.jungroup.adsession.d)
.class public final Lcom/iab/omid/library/jungroup/adsession/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/iab/omid/library/jungroup/adsession/j;

.field public final b:Landroid/webkit/WebView;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/iab/omid/library/jungroup/adsession/e;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/adsession/j;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/iab/omid/library/jungroup/adsession/e;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/d;->c:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/iab/omid/library/jungroup/adsession/d;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/adsession/d;->a:Lcom/iab/omid/library/jungroup/adsession/j;

    iput-object p2, p0, Lcom/iab/omid/library/jungroup/adsession/d;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/iab/omid/library/jungroup/adsession/d;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/iab/omid/library/jungroup/adsession/d;->h:Lcom/iab/omid/library/jungroup/adsession/e;

    if-eqz p4, :cond_3c

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iab/omid/library/jungroup/adsession/k;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/iab/omid/library/jungroup/adsession/d;->d:Ljava/util/HashMap;

    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_3c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/adsession/d;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/iab/omid/library/jungroup/adsession/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/iab/omid/library/jungroup/adsession/e;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/d;->h:Lcom/iab/omid/library/jungroup/adsession/e;

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/jungroup/adsession/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/d;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/d;->b:Landroid/webkit/WebView;

    return-object v0
.end method
