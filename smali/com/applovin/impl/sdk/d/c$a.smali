###### Class com.applovin.impl.sdk.d.c.a (com.applovin.impl.sdk.d.c$a)
.class public Lcom/applovin/impl/sdk/d/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final aIy:Lcom/applovin/impl/sdk/AppLovinAdBase;

.field private final aSF:Lcom/applovin/impl/sdk/d/c;

.field final synthetic aSG:Lcom/applovin/impl/sdk/d/c;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/d/c;Lcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/d/c;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/c$a;->aSG:Lcom/applovin/impl/sdk/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/c$a;->aIy:Lcom/applovin/impl/sdk/AppLovinAdBase;

    iput-object p3, p0, Lcom/applovin/impl/sdk/d/c$a;->aSF:Lcom/applovin/impl/sdk/d/c;

    return-void
.end method


# virtual methods
.method public JL()V
    .registers 1

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/d/b;)Lcom/applovin/impl/sdk/d/c$a;
    .registers 2

    return-object p0
.end method

.method public a(Lcom/applovin/impl/sdk/d/b;Ljava/lang/String;)Lcom/applovin/impl/sdk/d/c$a;
    .registers 3

    return-object p0
.end method
