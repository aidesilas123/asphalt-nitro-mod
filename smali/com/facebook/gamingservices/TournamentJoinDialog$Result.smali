###### Class com.facebook.gamingservices.TournamentJoinDialog.Result (com.facebook.gamingservices.TournamentJoinDialog$Result)
.class public final Lcom/facebook/gamingservices/TournamentJoinDialog$Result;
.super Ljava/lang/Object;
.source "TournamentJoinDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/TournamentJoinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private payload:Ljava/lang/String;

.field private requestID:Ljava/lang/String;

.field private tournamentID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->requestID:Ljava/lang/String;

    :cond_16
    const-string v0, "tournament_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->tournamentID:Ljava/lang/String;

    const-string v0, "payload"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->payload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPayload()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->requestID:Ljava/lang/String;

    return-object v0
.end method

.method public final getTournamentID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->tournamentID:Ljava/lang/String;

    return-object v0
.end method

.method public final setPayload(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->payload:Ljava/lang/String;

    return-void
.end method

.method public final setRequestID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->requestID:Ljava/lang/String;

    return-void
.end method

.method public final setTournamentID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->tournamentID:Ljava/lang/String;

    return-void
.end method
