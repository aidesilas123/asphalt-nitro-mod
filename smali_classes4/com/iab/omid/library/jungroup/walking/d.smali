###### Class com.iab.omid.library.jungroup.walking.d (com.iab.omid.library.jungroup.walking.d)
.class public final Lcom/iab/omid/library/jungroup/walking/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iab/omid/library/jungroup/walking/c$c$b;


# instance fields
.field public a:Lorg/json/JSONObject;

.field public final b:Lcom/iab/omid/library/jungroup/walking/c$d;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/walking/c$d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/walking/d;->b:Lcom/iab/omid/library/jungroup/walking/c$d;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/walking/d;->b:Lcom/iab/omid/library/jungroup/walking/c$d;

    new-instance v1, Lcom/iab/omid/library/jungroup/walking/c$e;

    invoke-direct {v1, p0}, Lcom/iab/omid/library/jungroup/walking/c$e;-><init>(Lcom/iab/omid/library/jungroup/walking/c$c$b;)V

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/jungroup/walking/c$d;->a(Lcom/iab/omid/library/jungroup/walking/c$c;)V

    return-void
.end method
