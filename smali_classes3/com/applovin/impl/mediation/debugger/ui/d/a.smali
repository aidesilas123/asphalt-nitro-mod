###### Class com.applovin.impl.mediation.debugger.ui.d.a (com.applovin.impl.mediation.debugger.ui.d.a)
.class public Lcom/applovin/impl/mediation/debugger/ui/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Pj:I

.field private final asp:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/a;->asp:I

    iput p2, p0, Lcom/applovin/impl/mediation/debugger/ui/d/a;->Pj:I

    return-void
.end method


# virtual methods
.method public wP()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/a;->asp:I

    return v0
.end method

.method public wQ()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/a;->Pj:I

    return v0
.end method
