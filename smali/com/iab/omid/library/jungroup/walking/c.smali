###### Class com.iab.omid.library.jungroup.walking.c (com.iab.omid.library.jungroup.walking.c)
.class public final Lcom/iab/omid/library/jungroup/walking/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/jungroup/walking/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/jungroup/walking/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/WeakHashMap;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c;->d:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c;->e:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c;->f:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c;->h:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 10

    sget-object v0, Lcom/iab/omid/library/jungroup/b/a;->c:Lcom/iab/omid/library/jungroup/b/a;

    if-eqz v0, :cond_fc

    iget-object v0, v0, Lcom/iab/omid/library/jungroup/b/a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/jungroup/adsession/l;

    iget-object v2, v1, Lcom/iab/omid/library/jungroup/adsession/l;->d:Lcom/iab/omid/library/jungroup/e/a;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-boolean v3, v1, Lcom/iab/omid/library/jungroup/adsession/l;->f:Z

    if-eqz v3, :cond_2c

    iget-boolean v3, v1, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    if-nez v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    if-eqz v3, :cond_e

    iget-object v3, v1, Lcom/iab/omid/library/jungroup/adsession/l;->h:Ljava/lang/String;

    if-eqz v2, :cond_ee

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "noWindowFocus"

    if-nez v4, :cond_3f

    const-string v5, "notAttached"

    goto :goto_93

    :cond_3f
    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lcom/iab/omid/library/jungroup/walking/c;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_66

    :cond_4d
    iget-object v4, p0, Lcom/iab/omid/library/jungroup/walking/c;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    iget-object v4, p0, Lcom/iab/omid/library/jungroup/walking/c;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_66

    :cond_5e
    iget-object v4, p0, Lcom/iab/omid/library/jungroup/walking/c;->h:Ljava/util/WeakHashMap;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v7

    :goto_66
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6e

    move-object v5, v6

    goto :goto_93

    :cond_6e
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v7, v2

    :goto_74
    if-eqz v7, :cond_8e

    invoke-static {v7}, Lcom/iab/omid/library/jungroup/d/e;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7e

    move-object v5, v8

    goto :goto_93

    :cond_7e
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v8, v7, Landroid/view/View;

    if-eqz v8, :cond_8c

    check-cast v7, Landroid/view/View;

    goto :goto_74

    :cond_8c
    move-object v7, v5

    goto :goto_74

    :cond_8e
    iget-object v7, p0, Lcom/iab/omid/library/jungroup/walking/c;->d:Ljava/util/HashSet;

    invoke-virtual {v7, v4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :goto_93
    if-nez v5, :cond_db

    iget-object v4, p0, Lcom/iab/omid/library/jungroup/walking/c;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/iab/omid/library/jungroup/walking/c;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/iab/omid/library/jungroup/adsession/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iab/omid/library/jungroup/b/c;

    iget-object v4, v3, Lcom/iab/omid/library/jungroup/b/c;->a:Lcom/iab/omid/library/jungroup/e/a;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-nez v4, :cond_bc

    goto :goto_a5

    :cond_bc
    iget-object v5, p0, Lcom/iab/omid/library/jungroup/walking/c;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iab/omid/library/jungroup/walking/c$a;

    if-eqz v5, :cond_ce

    iget-object v3, v1, Lcom/iab/omid/library/jungroup/adsession/l;->h:Ljava/lang/String;

    iget-object v4, v5, Lcom/iab/omid/library/jungroup/walking/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    :cond_ce
    iget-object v5, p0, Lcom/iab/omid/library/jungroup/walking/c;->b:Ljava/util/HashMap;

    new-instance v6, Lcom/iab/omid/library/jungroup/walking/c$a;

    iget-object v7, v1, Lcom/iab/omid/library/jungroup/adsession/l;->h:Ljava/lang/String;

    invoke-direct {v6, v3, v7}, Lcom/iab/omid/library/jungroup/walking/c$a;-><init>(Lcom/iab/omid/library/jungroup/b/c;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a5

    :cond_db
    if-eq v5, v6, :cond_e

    iget-object v1, p0, Lcom/iab/omid/library/jungroup/walking/c;->f:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iab/omid/library/jungroup/walking/c;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/iab/omid/library/jungroup/walking/c;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :cond_ee
    iget-object v1, p0, Lcom/iab/omid/library/jungroup/walking/c;->f:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iab/omid/library/jungroup/walking/c;->g:Ljava/util/HashMap;

    const-string v2, "noAdView"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :cond_fc
    return-void
.end method

###### Class com.iab.omid.library.jungroup.walking.c.a (com.iab.omid.library.jungroup.walking.c$a)
.class public final Lcom/iab/omid/library/jungroup/walking/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iab/omid/library/jungroup/walking/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/iab/omid/library/jungroup/b/c;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/b/c;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c$a;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/walking/c$a;->a:Lcom/iab/omid/library/jungroup/b/c;

    invoke-virtual {p0, p2}, Lcom/iab/omid/library/jungroup/walking/c$a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.iab.omid.library.jungroup.walking.c.b (com.iab.omid.library.jungroup.walking.c$b)
.class public abstract Lcom/iab/omid/library/jungroup/walking/c$b;
.super Lcom/iab/omid/library/jungroup/walking/c$c;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lorg/json/JSONObject;

.field public final e:J


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/walking/d;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/iab/omid/library/jungroup/walking/c$c;-><init>(Lcom/iab/omid/library/jungroup/walking/c$c$b;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/walking/c$b;->c:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/iab/omid/library/jungroup/walking/c$b;->d:Lorg/json/JSONObject;

    iput-wide p4, p0, Lcom/iab/omid/library/jungroup/walking/c$b;->e:J

    return-void
.end method

###### Class com.iab.omid.library.jungroup.walking.c.AbstractAsyncTaskC0319c (com.iab.omid.library.jungroup.walking.c$c)
.class public abstract Lcom/iab/omid/library/jungroup/walking/c$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/jungroup/walking/c$c$b;,
        Lcom/iab/omid/library/jungroup/walking/c$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/iab/omid/library/jungroup/walking/c$c$a;

.field public final b:Lcom/iab/omid/library/jungroup/walking/c$c$b;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/walking/c$c$b;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/walking/c$c;->b:Lcom/iab/omid/library/jungroup/walking/c$c$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/iab/omid/library/jungroup/walking/c$c;->a:Lcom/iab/omid/library/jungroup/walking/c$c$a;

    if-eqz p1, :cond_c

    check-cast p1, Lcom/iab/omid/library/jungroup/walking/c$d;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/iab/omid/library/jungroup/walking/c$d;->c:Lcom/iab/omid/library/jungroup/walking/c$c;

    invoke-virtual {p1}, Lcom/iab/omid/library/jungroup/walking/c$d;->a()V

    :cond_c
    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/jungroup/walking/c$c;->a(Ljava/lang/String;)V

    return-void
.end method

###### Class com.iab.omid.library.jungroup.walking.c.AbstractAsyncTaskC0319c.a (com.iab.omid.library.jungroup.walking.c$c$a)
.class public interface abstract Lcom/iab/omid/library/jungroup/walking/c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iab/omid/library/jungroup/walking/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

###### Class com.iab.omid.library.jungroup.walking.c.AbstractAsyncTaskC0319c.b (com.iab.omid.library.jungroup.walking.c$c$b)
.class public interface abstract Lcom/iab/omid/library/jungroup/walking/c$c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iab/omid/library/jungroup/walking/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

###### Class com.iab.omid.library.jungroup.walking.c.d (com.iab.omid.library.jungroup.walking.c$d)
.class public final Lcom/iab/omid/library/jungroup/walking/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iab/omid/library/jungroup/walking/c$c$a;


# instance fields
.field public final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/iab/omid/library/jungroup/walking/c$c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/iab/omid/library/jungroup/walking/c$c;


# direct methods
.method public constructor <init>()V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c$d;->b:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c$d;->c:Lcom/iab/omid/library/jungroup/walking/c$c;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c$d;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c$d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/jungroup/walking/c$c;

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c$d;->c:Lcom/iab/omid/library/jungroup/walking/c$c;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/iab/omid/library/jungroup/walking/c$d;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_14
    return-void
.end method

.method public final a(Lcom/iab/omid/library/jungroup/walking/c$c;)V
    .registers 3

    iput-object p0, p1, Lcom/iab/omid/library/jungroup/walking/c$c;->a:Lcom/iab/omid/library/jungroup/walking/c$c$a;

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c$d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/iab/omid/library/jungroup/walking/c$d;->c:Lcom/iab/omid/library/jungroup/walking/c$c;

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/iab/omid/library/jungroup/walking/c$d;->a()V

    :cond_e
    return-void
.end method

###### Class com.iab.omid.library.jungroup.walking.c.e (com.iab.omid.library.jungroup.walking.c$e)
.class public final Lcom/iab/omid/library/jungroup/walking/c$e;
.super Lcom/iab/omid/library/jungroup/walking/c$c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/walking/c$c$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iab/omid/library/jungroup/walking/c$c;-><init>(Lcom/iab/omid/library/jungroup/walking/c$c$b;)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object p1, p0, Lcom/iab/omid/library/jungroup/walking/c$c;->b:Lcom/iab/omid/library/jungroup/walking/c$c$b;

    check-cast p1, Lcom/iab/omid/library/jungroup/walking/d;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/iab/omid/library/jungroup/walking/d;->a:Lorg/json/JSONObject;

    return-object v0
.end method

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

###### Class com.iab.omid.library.jungroup.walking.c.g (com.iab.omid.library.jungroup.walking.c$g)
.class public final Lcom/iab/omid/library/jungroup/walking/c$g;
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

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    sget-object v0, Lcom/iab/omid/library/jungroup/b/a;->c:Lcom/iab/omid/library/jungroup/b/a;

    if-eqz v0, :cond_47

    iget-object v0, v0, Lcom/iab/omid/library/jungroup/b/a;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/jungroup/adsession/l;

    iget-object v2, p0, Lcom/iab/omid/library/jungroup/walking/c$b;->c:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/iab/omid/library/jungroup/adsession/l;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v1, v1, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    iget-wide v2, p0, Lcom/iab/omid/library/jungroup/walking/c$b;->e:J

    iget-wide v4, v1, Lcom/iab/omid/library/jungroup/publisher/a;->e:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_14

    const/4 v2, 0x2

    iput v2, v1, Lcom/iab/omid/library/jungroup/publisher/a;->d:I

    invoke-virtual {v1}, Lcom/iab/omid/library/jungroup/publisher/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "setNativeViewHierarchy"

    invoke-static {v1, v3, v2}, Lcom/iab/omid/library/jungroup/b/f;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_47
    invoke-super {p0, p1}, Lcom/iab/omid/library/jungroup/walking/c$c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object p1, p0, Lcom/iab/omid/library/jungroup/walking/c$b;->d:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c$c;->b:Lcom/iab/omid/library/jungroup/walking/c$c$b;

    check-cast v0, Lcom/iab/omid/library/jungroup/walking/d;

    iget-object v0, v0, Lcom/iab/omid/library/jungroup/walking/d;->a:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/iab/omid/library/jungroup/d/b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    goto :goto_1c

    :cond_10
    iget-object p1, p0, Lcom/iab/omid/library/jungroup/walking/c$c;->b:Lcom/iab/omid/library/jungroup/walking/c$c$b;

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/walking/c$b;->d:Lorg/json/JSONObject;

    check-cast p1, Lcom/iab/omid/library/jungroup/walking/d;

    iput-object v0, p1, Lcom/iab/omid/library/jungroup/walking/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1c
    return-object p1
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/jungroup/walking/c$g;->a(Ljava/lang/String;)V

    return-void
.end method
