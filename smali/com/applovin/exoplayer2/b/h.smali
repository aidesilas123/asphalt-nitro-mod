###### Class com.applovin.exoplayer2.b.h (com.applovin.exoplayer2.b.h)
.class public interface abstract Lcom/applovin/exoplayer2/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/b/h$d;,
        Lcom/applovin/exoplayer2/b/h$e;,
        Lcom/applovin/exoplayer2/b/h$b;,
        Lcom/applovin/exoplayer2/b/h$a;,
        Lcom/applovin/exoplayer2/b/h$c;
    }
.end annotation


# virtual methods
.method public abstract F(Z)J
.end method

.method public abstract G(Z)V
.end method

.method public abstract Y()V
.end method

.method public abstract a(Lcom/applovin/exoplayer2/am;)V
.end method

.method public abstract a(Lcom/applovin/exoplayer2/b/d;)V
.end method

.method public abstract a(Lcom/applovin/exoplayer2/b/h$c;)V
.end method

.method public abstract a(Lcom/applovin/exoplayer2/b/k;)V
.end method

.method public abstract a(Lcom/applovin/exoplayer2/v;I[I)V
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/b/h$a;
        }
    .end annotation
.end method

.method public abstract a(Ljava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/b/h$b;,
            Lcom/applovin/exoplayer2/b/h$e;
        }
    .end annotation
.end method

.method public abstract av()Lcom/applovin/exoplayer2/am;
.end method

.method public abstract aw(I)V
.end method

.method public abstract cR()Z
.end method

.method public abstract d(Lcom/applovin/exoplayer2/v;)Z
.end method

.method public abstract dI()V
.end method

.method public abstract dJ()V
.end method

.method public abstract dK()V
.end method

.method public abstract dL()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/b/h$e;
        }
    .end annotation
.end method

.method public abstract dM()Z
.end method

.method public abstract dN()V
.end method

.method public abstract dO()V
.end method

.method public abstract dP()V
.end method

.method public abstract e(Lcom/applovin/exoplayer2/v;)I
.end method

.method public abstract h(F)V
.end method

.method public abstract pause()V
.end method

###### Class com.applovin.exoplayer2.b.h.a (com.applovin.exoplayer2.b.h$a)
.class public final Lcom/applovin/exoplayer2/b/h$a;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final dU:Lcom/applovin/exoplayer2/v;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/exoplayer2/v;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/b/h$a;->dU:Lcom/applovin/exoplayer2/v;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/b/h$a;->dU:Lcom/applovin/exoplayer2/v;

    return-void
.end method

###### Class com.applovin.exoplayer2.b.h.b (com.applovin.exoplayer2.b.h$b)
.class public final Lcom/applovin/exoplayer2/b/h$b;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final by:Z

.field public final dU:Lcom/applovin/exoplayer2/v;

.field public final jU:I


# direct methods
.method public constructor <init>(IIIILcom/applovin/exoplayer2/v;ZLjava/lang/Exception;)V
    .registers 10
    .param p7    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack init failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Config("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_32

    const-string p2, " (recoverable)"

    goto :goto_34

    :cond_32
    const-string p2, ""

    :goto_34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/applovin/exoplayer2/b/h$b;->jU:I

    iput-boolean p6, p0, Lcom/applovin/exoplayer2/b/h$b;->by:Z

    iput-object p5, p0, Lcom/applovin/exoplayer2/b/h$b;->dU:Lcom/applovin/exoplayer2/v;

    return-void
.end method

###### Class com.applovin.exoplayer2.b.h.c (com.applovin.exoplayer2.b.h$c)
.class public interface abstract Lcom/applovin/exoplayer2/b/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract A(Z)V
.end method

.method public abstract E(J)V
.end method

.method public abstract F(J)V
.end method

.method public abstract b(Ljava/lang/Exception;)V
.end method

.method public abstract dQ()V
.end method

.method public abstract dR()V
.end method

.method public abstract e(IJJ)V
.end method

###### Class com.applovin.exoplayer2.b.h.d (com.applovin.exoplayer2.b.h$d)
.class public final Lcom/applovin/exoplayer2/b/h$d;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final jV:J

.field public final jW:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected audio track timestamp discontinuity: expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/b/h$d;->jV:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/b/h$d;->jW:J

    return-void
.end method

###### Class com.applovin.exoplayer2.b.h.e (com.applovin.exoplayer2.b.h$e)
.class public final Lcom/applovin/exoplayer2/b/h$e;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final by:Z

.field public final dU:Lcom/applovin/exoplayer2/v;

.field public final errorCode:I


# direct methods
.method public constructor <init>(ILcom/applovin/exoplayer2/v;Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack write failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/b/h$e;->by:Z

    iput p1, p0, Lcom/applovin/exoplayer2/b/h$e;->errorCode:I

    iput-object p2, p0, Lcom/applovin/exoplayer2/b/h$e;->dU:Lcom/applovin/exoplayer2/v;

    return-void
.end method
