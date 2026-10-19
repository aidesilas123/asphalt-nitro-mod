###### Class com.iab.omid.library.jungroup.walking.b (com.iab.omid.library.jungroup.walking.b)
.class public final Lcom/iab/omid/library/jungroup/walking/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iab/omid/library/jungroup/c/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/jungroup/walking/b$c;,
        Lcom/iab/omid/library/jungroup/walking/b$d;
    }
.end annotation


# static fields
.field public static final h:Lcom/iab/omid/library/jungroup/walking/b;

.field public static final i:Landroid/os/Handler;

.field public static j:Landroid/os/Handler;

.field public static final k:Lcom/iab/omid/library/jungroup/walking/b$a;

.field public static final l:Lcom/iab/omid/library/jungroup/walking/b$b;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/iab/omid/library/jungroup/c/b;

.field public final e:Lcom/iab/omid/library/jungroup/walking/c;

.field public final f:Lcom/iab/omid/library/jungroup/walking/d;

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/iab/omid/library/jungroup/walking/b;

    invoke-direct {v0}, Lcom/iab/omid/library/jungroup/walking/b;-><init>()V

    sput-object v0, Lcom/iab/omid/library/jungroup/walking/b;->h:Lcom/iab/omid/library/jungroup/walking/b;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/iab/omid/library/jungroup/walking/b;->i:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/iab/omid/library/jungroup/walking/b;->j:Landroid/os/Handler;

    new-instance v0, Lcom/iab/omid/library/jungroup/walking/b$a;

    invoke-direct {v0}, Lcom/iab/omid/library/jungroup/walking/b$a;-><init>()V

    sput-object v0, Lcom/iab/omid/library/jungroup/walking/b;->k:Lcom/iab/omid/library/jungroup/walking/b$a;

    new-instance v0, Lcom/iab/omid/library/jungroup/walking/b$b;

    invoke-direct {v0}, Lcom/iab/omid/library/jungroup/walking/b$b;-><init>()V

    sput-object v0, Lcom/iab/omid/library/jungroup/walking/b;->l:Lcom/iab/omid/library/jungroup/walking/b$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/b;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/b;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/iab/omid/library/jungroup/walking/c;

    invoke-direct {v0}, Lcom/iab/omid/library/jungroup/walking/c;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/b;->e:Lcom/iab/omid/library/jungroup/walking/c;

    new-instance v0, Lcom/iab/omid/library/jungroup/c/b;

    invoke-direct {v0}, Lcom/iab/omid/library/jungroup/c/b;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/b;->d:Lcom/iab/omid/library/jungroup/c/b;

    new-instance v0, Lcom/iab/omid/library/jungroup/walking/d;

    new-instance v1, Lcom/iab/omid/library/jungroup/walking/c$d;

    invoke-direct {v1}, Lcom/iab/omid/library/jungroup/walking/c$d;-><init>()V

    invoke-direct {v0, v1}, Lcom/iab/omid/library/jungroup/walking/d;-><init>(Lcom/iab/omid/library/jungroup/walking/c$d;)V

    iput-object v0, p0, Lcom/iab/omid/library/jungroup/walking/b;->f:Lcom/iab/omid/library/jungroup/walking/d;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/iab/omid/library/jungroup/c/a;Lorg/json/JSONObject;Z)V
    .registers 15

    const-string v1, "childViews"

    invoke-static {p1}, Lcom/iab/omid/library/jungroup/d/e;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    if-nez v3, :cond_10

    return-void

    :cond_10
    iget-object v3, p0, Lcom/iab/omid/library/jungroup/walking/b;->e:Lcom/iab/omid/library/jungroup/walking/c;

    iget-object v5, v3, Lcom/iab/omid/library/jungroup/walking/c;->d:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_1d

    const/4 v3, 0x1

    goto :goto_24

    :cond_1d
    iget-boolean v3, v3, Lcom/iab/omid/library/jungroup/walking/c;->i:Z

    if-eqz v3, :cond_23

    const/4 v3, 0x2

    goto :goto_24

    :cond_23
    const/4 v3, 0x3

    :goto_24
    if-ne v3, v6, :cond_27

    return-void

    :cond_27
    invoke-interface {p2, p1}, Lcom/iab/omid/library/jungroup/c/a;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    sget-object v8, Lcom/iab/omid/library/jungroup/d/b;->a:Landroid/view/WindowManager;

    :try_start_2d
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_3b

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p3, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3b
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_43
    iget-object v0, p0, Lcom/iab/omid/library/jungroup/walking/b;->e:Lcom/iab/omid/library/jungroup/walking/c;

    iget-object v1, v0, Lcom/iab/omid/library/jungroup/walking/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_4f

    const/4 v0, 0x0

    goto :goto_5f

    :cond_4f
    iget-object v1, v0, Lcom/iab/omid/library/jungroup/walking/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5e

    iget-object v0, v0, Lcom/iab/omid/library/jungroup/walking/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    move-object v0, v1

    :goto_5f
    if-eqz v0, :cond_97

    :try_start_61
    const-string v1, "adSessionId"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_66} :catch_67

    goto :goto_6d

    :catch_67
    move-exception v0

    const-string v1, "Error with setting ad session id"

    invoke-static {v1, v0}, Lcom/iab/omid/library/jungroup/d/c;->a(Ljava/lang/String;Lorg/json/JSONException;)V

    :goto_6d
    iget-object v0, p0, Lcom/iab/omid/library/jungroup/walking/b;->e:Lcom/iab/omid/library/jungroup/walking/c;

    iget-object v1, v0, Lcom/iab/omid/library/jungroup/walking/c;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    iget-object v0, v0, Lcom/iab/omid/library/jungroup/walking/c;->h:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_81

    :cond_80
    const/4 v0, 0x1

    :goto_81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :try_start_85
    const-string v1, "hasWindowFocus"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_85 .. :try_end_8a} :catch_8b

    goto :goto_91

    :catch_8b
    move-exception v0

    const-string v1, "Error with setting not visible reason"

    invoke-static {v1, v0}, Lcom/iab/omid/library/jungroup/d/c;->a(Ljava/lang/String;Lorg/json/JSONException;)V

    :goto_91
    iget-object v0, p0, Lcom/iab/omid/library/jungroup/walking/b;->e:Lcom/iab/omid/library/jungroup/walking/c;

    iput-boolean v7, v0, Lcom/iab/omid/library/jungroup/walking/c;->i:Z

    const/4 v0, 0x1

    goto :goto_98

    :cond_97
    const/4 v0, 0x0

    :goto_98
    if-nez v0, :cond_106

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/walking/b;->e:Lcom/iab/omid/library/jungroup/walking/c;

    iget-object v1, v0, Lcom/iab/omid/library/jungroup/walking/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/jungroup/walking/c$a;

    if-eqz v1, :cond_ab

    iget-object v0, v0, Lcom/iab/omid/library/jungroup/walking/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ab
    if-eqz v1, :cond_ef

    sget-object v0, Lcom/iab/omid/library/jungroup/d/b;->a:Landroid/view/WindowManager;

    iget-object v0, v1, Lcom/iab/omid/library/jungroup/walking/c$a;->a:Lcom/iab/omid/library/jungroup/b/c;

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, v1, Lcom/iab/omid/library/jungroup/walking/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_bc

    :cond_cc
    :try_start_cc
    const-string v1, "isFriendlyObstructionFor"

    invoke-virtual {v6, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "friendlyObstructionClass"

    iget-object v8, v0, Lcom/iab/omid/library/jungroup/b/c;->b:Ljava/lang/String;

    invoke-virtual {v6, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "friendlyObstructionPurpose"

    iget-object v8, v0, Lcom/iab/omid/library/jungroup/b/c;->c:Lcom/iab/omid/library/jungroup/adsession/g;

    invoke-virtual {v6, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "friendlyObstructionReason"

    iget-object v0, v0, Lcom/iab/omid/library/jungroup/b/c;->d:Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e6
    .catch Lorg/json/JSONException; {:try_start_cc .. :try_end_e6} :catch_e7

    goto :goto_ed

    :catch_e7
    move-exception v0

    const-string v1, "Error with setting friendly obstruction"

    invoke-static {v1, v0}, Lcom/iab/omid/library/jungroup/d/c;->a(Ljava/lang/String;Lorg/json/JSONException;)V

    :goto_ed
    const/4 v0, 0x1

    goto :goto_f0

    :cond_ef
    const/4 v0, 0x0

    :goto_f0
    if-nez p4, :cond_f7

    if-eqz v0, :cond_f5

    goto :goto_f7

    :cond_f5
    const/4 v0, 0x0

    goto :goto_f8

    :cond_f7
    :goto_f7
    const/4 v0, 0x1

    :goto_f8
    if-ne v3, v7, :cond_fc

    const/4 v8, 0x1

    goto :goto_fd

    :cond_fc
    const/4 v8, 0x0

    :goto_fd
    move-object v1, p2

    move-object v2, p1

    move-object v3, v6

    move-object v4, p0

    move v5, v8

    move v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/iab/omid/library/jungroup/c/a;->a(Landroid/view/View;Lorg/json/JSONObject;Lcom/iab/omid/library/jungroup/c/a$a;ZZ)V

    :cond_106
    iget v0, p0, Lcom/iab/omid/library/jungroup/walking/b;->b:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/iab/omid/library/jungroup/walking/b;->b:I

    return-void
.end method
