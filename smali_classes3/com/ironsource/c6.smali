###### Class com.json.c6 (com.ironsource.c6)
.class public Lcom/ironsource/c6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/f6;


# direct methods
.method constructor <init>(Lcom/ironsource/f6;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/c6;->a:Lcom/ironsource/f6;

    return-void
.end method


# virtual methods
.method public receiveMessageFromExternal(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/ironsource/c6;->a:Lcom/ironsource/f6;

    invoke-virtual {v0, p1}, Lcom/ironsource/f6;->handleMessageFromAd(Ljava/lang/String;)V

    return-void
.end method
