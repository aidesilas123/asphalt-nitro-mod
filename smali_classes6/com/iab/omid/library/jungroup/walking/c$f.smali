###### Class com.iab.omid.library.jungroup.walking.c.f (com.iab.omid.library.jungroup.walking.c$f)
.class public final Lcom/iab/omid/library/jungroup/walking/c$f;
.super Lcom/iab/omid/library/jungroup/walking/c$b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/walking/d;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/iab/omid/library/jungroup/walking/c$b;-><init>(Lcom/iab/omid/library/jungroup/walking/d;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 9

    sget-object v0, Lcom/iab/omid/library/jungroup/b/a;->c:Lcom/iab/omid/library/jungroup/b/a;

    if-eqz v0, :cond_45

    iget-object v0, v0, Lcom/iab/omid/library/jungroup/b/a;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/jungroup/adsession/l;

    iget-object v2, p0, Lcom/iab/omid/library/jungroup/walking/c$b;->c:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/iab/omid/library/jungroup/adsession/l;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v1, v1, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    iget-wide v2, p0, Lcom/iab/omid/library/jungroup/walking/c$b;->e:J

    iget-wide v4, v1, Lcom/iab/omid/library/jungroup/publisher/a;->e:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_e

    iget v2, v1, Lcom/iab/omid/library/jungroup/publisher/a;->d:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_e

    iput v3, v1, Lcom/iab/omid/library/jungroup/publisher/a;->d:I

    invoke-virtual {v1}, Lcom/iab/omid/library/jungroup/publisher/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "setNativeViewHierarchy"

    invoke-static {v1, v3, v2}, Lcom/iab/omid/library/jungroup/b/f;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_45
    invoke-super {p0, p1}, Lcom/iab/omid/library/jungroup/walking/c$c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p1, p0, Lcom/iab/omid/library/jungroup/walking/c$b;->d:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/jungroup/walking/c$f;->a(Ljava/lang/String;)V

    return-void
.end method
