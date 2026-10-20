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
