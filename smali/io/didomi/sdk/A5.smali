###### Class io.didomi.drawable.C1712a5 (io.didomi.sdk.a5)
.class public Lio/didomi/sdk/a5;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/a5$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0010\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010#\n\u0002\u0008/\n\u0002\u0018\u0002\n\u0002\u0008;\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008@\u0008\u0017\u0018\u00002\u00020\u0001Bi\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001d\u0010 \u001a\u00020\u001f2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u001d\u0010#\u001a\u00020\u001f2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001cH\u0002\u00a2\u0006\u0004\u0008#\u0010!J\u001f\u0010 \u001a\u00020\'2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008 \u0010(J\u000f\u0010)\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u0017\u0010 \u001a\u00020-2\u0006\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008 \u0010.J\u0017\u0010 \u001a\u00020\'2\u0006\u0010&\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008 \u0010/J\u000f\u0010#\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008#\u00101J\u0017\u0010 \u001a\u0002042\u0006\u00103\u001a\u000202H\u0002\u00a2\u0006\u0004\u0008 \u00105J\u000f\u00107\u001a\u000206H\u0002\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010;\u001a\u0002062\u0006\u0010:\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010 \u001a\u0002062\u0006\u0010:\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008 \u0010<J\u000f\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008 \u0010*J\u000f\u0010=\u001a\u000206H\u0002\u00a2\u0006\u0004\u0008=\u00108J\u0017\u0010#\u001a\u00020\u001f2\u0006\u0010:\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008#\u0010>J\u000f\u0010?\u001a\u000206H\u0002\u00a2\u0006\u0004\u0008?\u00108J\u000f\u0010@\u001a\u000206H\u0002\u00a2\u0006\u0004\u0008@\u00108J\u001f\u0010 \u001a\u0002062\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010B\u001a\u00020$H\u0002\u00a2\u0006\u0004\u0008 \u0010CJ\u001f\u0010E\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010D\u001a\u00020$H\u0002\u00a2\u0006\u0004\u0008E\u0010CJ\u000f\u0010F\u001a\u000206H\u0002\u00a2\u0006\u0004\u0008F\u00108J\u000f\u0010G\u001a\u000206H\u0002\u00a2\u0006\u0004\u0008G\u00108J\u000f\u0010H\u001a\u000206H\u0002\u00a2\u0006\u0004\u0008H\u00108J\u000f\u0010I\u001a\u000206H\u0002\u00a2\u0006\u0004\u0008I\u00108J\u0017\u0010J\u001a\u00020\u001f2\u0006\u0010A\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008J\u0010KJ\u0017\u0010L\u001a\u00020$2\u0006\u0010A\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008L\u0010MJ\u0017\u00107\u001a\u00020$2\u0006\u0010A\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u00087\u0010MJ\u0017\u0010#\u001a\u0002062\u0006\u0010A\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008#\u0010NJ\u0017\u0010O\u001a\u0002062\u0006\u0010A\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008O\u0010NJ\u0017\u0010P\u001a\u0002062\u0006\u0010A\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008P\u0010NJ\u0017\u0010E\u001a\u0002062\u0006\u0010%\u001a\u00020$H\u0002\u00a2\u0006\u0004\u0008E\u0010QJ\u001d\u0010G\u001a\u0008\u0012\u0004\u0012\u0002040T2\u0006\u0010S\u001a\u00020RH\u0002\u00a2\u0006\u0004\u0008G\u0010UJ\u001b\u0010V\u001a\u0004\u0018\u00010\"2\u0008\u0010A\u001a\u0004\u0018\u00010\u001dH\u0002\u00a2\u0006\u0004\u0008V\u0010WJ\u001b\u0010V\u001a\u0004\u0018\u00010\"2\u0008\u0010S\u001a\u0004\u0018\u00010RH\u0002\u00a2\u0006\u0004\u0008V\u0010XJ\u001f\u0010 \u001a\u0002062\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010S\u001a\u00020RH\u0002\u00a2\u0006\u0004\u0008 \u0010YJ\u0017\u0010;\u001a\u0002062\u0006\u0010S\u001a\u00020RH\u0002\u00a2\u0006\u0004\u0008;\u0010ZJ\u001d\u0010E\u001a\u00020\u001f2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0004\u00a2\u0006\u0004\u0008E\u0010!J\u0015\u0010[\u001a\u00020\u001f2\u0006\u0010S\u001a\u00020R\u00a2\u0006\u0004\u0008[\u0010\\J\r\u0010]\u001a\u000206\u00a2\u0006\u0004\u0008]\u00108J\r\u0010^\u001a\u00020\u001f\u00a2\u0006\u0004\u0008^\u0010*J\r\u0010_\u001a\u00020\u001f\u00a2\u0006\u0004\u0008_\u0010*J\r\u0010`\u001a\u00020\u001f\u00a2\u0006\u0004\u0008`\u0010*J\r\u0010a\u001a\u000204\u00a2\u0006\u0004\u0008a\u0010bJ\u0013\u0010c\u001a\u0008\u0012\u0004\u0012\u00020+0\u001c\u00a2\u0006\u0004\u0008c\u0010dJ\u001b\u0010#\u001a\u0008\u0012\u0004\u0012\u00020f0e2\u0006\u0010S\u001a\u00020R\u00a2\u0006\u0004\u0008#\u0010gJ#\u0010 \u001a\u0008\u0012\u0004\u0012\u00020f0\u001c2\u0006\u0010S\u001a\u00020R2\u0006\u0010&\u001a\u00020\u001f\u00a2\u0006\u0004\u0008 \u0010hJ\u0013\u0010i\u001a\u0008\u0012\u0004\u0012\u00020f0e\u00a2\u0006\u0004\u0008i\u0010dJ\u001b\u0010E\u001a\u0008\u0012\u0004\u0012\u00020f0\u001c2\u0006\u0010&\u001a\u00020\u001f\u00a2\u0006\u0004\u0008E\u0010jJ\u0013\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\"0e\u00a2\u0006\u0004\u0008E\u0010dJ\u0015\u0010k\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016\u00a2\u0006\u0004\u0008k\u0010dJ\u0013\u0010l\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c\u00a2\u0006\u0004\u0008l\u0010dJ\u0015\u0010 \u001a\u0002062\u0006\u0010n\u001a\u00020m\u00a2\u0006\u0004\u0008 \u0010oJ\u0017\u0010;\u001a\u0004\u0018\u00010\u001d2\u0006\u0010p\u001a\u000204\u00a2\u0006\u0004\u0008;\u0010qJ\u0017\u0010 \u001a\u0004\u0018\u00010R2\u0006\u0010p\u001a\u000204\u00a2\u0006\u0004\u0008 \u0010rJ\u0013\u0010s\u001a\u0008\u0012\u0004\u0012\u00020\u001d0T\u00a2\u0006\u0004\u0008s\u0010tJ\u0013\u0010u\u001a\u0008\u0012\u0004\u0012\u00020\u001d0T\u00a2\u0006\u0004\u0008u\u0010tJ\u0013\u0010w\u001a\u0008\u0012\u0004\u0012\u00020\u001d0v\u00a2\u0006\u0004\u0008w\u0010tJ\u0013\u0010x\u001a\u0008\u0012\u0004\u0012\u00020\u001d0v\u00a2\u0006\u0004\u0008x\u0010tJ\u0013\u0010y\u001a\u0008\u0012\u0004\u0012\u00020\u001d0v\u00a2\u0006\u0004\u0008y\u0010tJ\u0013\u0010z\u001a\u0008\u0012\u0004\u0012\u00020\u001d0v\u00a2\u0006\u0004\u0008z\u0010tJ\u0013\u0010{\u001a\u0008\u0012\u0004\u0012\u0002090v\u00a2\u0006\u0004\u0008{\u0010tJ\u0013\u0010|\u001a\u0008\u0012\u0004\u0012\u0002090v\u00a2\u0006\u0004\u0008|\u0010tJ\u0013\u0010}\u001a\u0008\u0012\u0004\u0012\u0002090v\u00a2\u0006\u0004\u0008}\u0010tJ\u0013\u0010~\u001a\u0008\u0012\u0004\u0012\u0002090v\u00a2\u0006\u0004\u0008~\u0010tJ\u0016\u0010\u007f\u001a\u0002042\u0006\u0010A\u001a\u00020\u001d\u00a2\u0006\u0005\u0008\u007f\u0010\u0080\u0001J\u0016\u0010G\u001a\u0002042\u0006\u0010A\u001a\u00020\u001d\u00a2\u0006\u0005\u0008G\u0010\u0080\u0001J\u000f\u0010\u0081\u0001\u001a\u00020\u001f\u00a2\u0006\u0005\u0008\u0081\u0001\u0010*J\u000f\u0010\u0082\u0001\u001a\u00020\u001f\u00a2\u0006\u0005\u0008\u0082\u0001\u0010*J\u0016\u0010i\u001a\u0002042\u0006\u0010S\u001a\u00020R\u00a2\u0006\u0005\u0008i\u0010\u0083\u0001J\u0018\u0010E\u001a\u0002042\u0006\u0010S\u001a\u00020RH\u0004\u00a2\u0006\u0005\u0008E\u0010\u0083\u0001J\u000f\u0010\u0084\u0001\u001a\u00020\u001f\u00a2\u0006\u0005\u0008\u0084\u0001\u0010*J\u0018\u0010[\u001a\u0004\u0018\u0001042\u0006\u0010A\u001a\u00020\u001d\u00a2\u0006\u0005\u0008[\u0010\u0080\u0001J\u0018\u0010F\u001a\u0004\u0018\u0001042\u0006\u0010A\u001a\u00020\u001d\u00a2\u0006\u0005\u0008F\u0010\u0080\u0001J\r\u0010J\u001a\u00020\u001f\u00a2\u0006\u0004\u0008J\u0010*J\u000f\u0010\u0085\u0001\u001a\u00020\u001f\u00a2\u0006\u0005\u0008\u0085\u0001\u0010*J\u0017\u0010 \u001a\u00020\u001f2\u0008\u0010S\u001a\u0004\u0018\u00010R\u00a2\u0006\u0004\u0008 \u0010\\J\u0016\u0010\u007f\u001a\u00020\u001f2\u0007\u0010\u0086\u0001\u001a\u00020R\u00a2\u0006\u0004\u0008\u007f\u0010\\J\u000f\u0010\u0087\u0001\u001a\u00020\u001f\u00a2\u0006\u0005\u0008\u0087\u0001\u0010*J\u0015\u0010i\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d\u00a2\u0006\u0004\u0008i\u0010NJ\u0015\u0010;\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d\u00a2\u0006\u0004\u0008;\u0010NJ\u0017\u0010\u0088\u0001\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d\u00a2\u0006\u0005\u0008\u0088\u0001\u0010NJ\u0015\u0010E\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d\u00a2\u0006\u0004\u0008E\u0010NJ\u0015\u0010 \u001a\u0002062\u0006\u0010A\u001a\u00020\u001d\u00a2\u0006\u0004\u0008 \u0010NJ\u0019\u0010\u0089\u0001\u001a\u00020\u001f2\u0008\u0010A\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0005\u0008\u0089\u0001\u0010KJ\u000f\u0010\u008a\u0001\u001a\u000206\u00a2\u0006\u0005\u0008\u008a\u0001\u00108J\u0017\u0010#\u001a\u00020\u001f2\u0007\u0010\u008b\u0001\u001a\u00020\u001f\u00a2\u0006\u0005\u0008#\u0010\u008c\u0001J\u000f\u0010\u008d\u0001\u001a\u00020\u001f\u00a2\u0006\u0005\u0008\u008d\u0001\u0010*J\r\u0010;\u001a\u00020\u001f\u00a2\u0006\u0004\u0008;\u0010*J\u0011\u0010\u008e\u0001\u001a\u000206H\u0010\u00a2\u0006\u0005\u0008\u008e\u0001\u00108J\u000f\u0010\u008f\u0001\u001a\u000206\u00a2\u0006\u0005\u0008\u008f\u0001\u00108J\u0018\u0010\u0091\u0001\u001a\u0002062\u0007\u0010\u0090\u0001\u001a\u00020\u001d\u00a2\u0006\u0005\u0008\u0091\u0001\u0010NJ\u0016\u0010;\u001a\u0002062\u0007\u0010\u0092\u0001\u001a\u00020$\u00a2\u0006\u0004\u0008;\u0010QJ\u0018\u0010\u0093\u0001\u001a\u0002062\u0007\u0010\u0090\u0001\u001a\u00020R\u00a2\u0006\u0005\u0008\u0093\u0001\u0010ZJ\u0016\u0010P\u001a\u00020$2\u0006\u0010S\u001a\u00020R\u00a2\u0006\u0005\u0008P\u0010\u0094\u0001J\u0017\u0010\u0093\u0001\u001a\u00020$2\u0006\u0010A\u001a\u00020\u001d\u00a2\u0006\u0005\u0008\u0093\u0001\u0010MJ\u0018\u0010#\u001a\u0002062\t\u0010\u0095\u0001\u001a\u0004\u0018\u00010$\u00a2\u0006\u0004\u0008#\u0010QJ\u0016\u0010I\u001a\u0002062\u0007\u0010\u0096\u0001\u001a\u00020\u001d\u00a2\u0006\u0004\u0008I\u0010NJ\u0016\u00107\u001a\u0002062\u0007\u0010\u0097\u0001\u001a\u00020R\u00a2\u0006\u0004\u00087\u0010ZJ\u0017\u0010\u0098\u0001\u001a\u00020\u001f2\u0006\u0010A\u001a\u00020\u001d\u00a2\u0006\u0005\u0008\u0098\u0001\u0010KJ\u0017\u0010\u0099\u0001\u001a\u00020\u001f2\u0006\u0010A\u001a\u00020\u001d\u00a2\u0006\u0005\u0008\u0099\u0001\u0010KJ\u000f\u0010\u009a\u0001\u001a\u000206\u00a2\u0006\u0005\u0008\u009a\u0001\u00108J\u000f\u0010\u009b\u0001\u001a\u000206\u00a2\u0006\u0005\u0008\u009b\u0001\u00108J\u000f\u0010\u009c\u0001\u001a\u000206\u00a2\u0006\u0005\u0008\u009c\u0001\u00108J\u000f\u0010\u009d\u0001\u001a\u000206\u00a2\u0006\u0005\u0008\u009d\u0001\u00108J\u000f\u0010\u009e\u0001\u001a\u000206\u00a2\u0006\u0005\u0008\u009e\u0001\u00108J\u001d\u0010i\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008i\u0010CJ\u001d\u0010;\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008;\u0010CJ\u001d\u0010#\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008#\u0010CJ\u001e\u0010 \u001a\u0002062\u0006\u0010S\u001a\u00020R2\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0005\u0008 \u0010\u009f\u0001J\u0015\u0010 \u001a\u0002062\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008 \u0010QJ\u000f\u0010\u00a0\u0001\u001a\u000206\u00a2\u0006\u0005\u0008\u00a0\u0001\u00108J\u000f\u0010\u00a1\u0001\u001a\u000206\u00a2\u0006\u0005\u0008\u00a1\u0001\u00108J\u000f\u0010\u00a2\u0001\u001a\u000206\u00a2\u0006\u0005\u0008\u00a2\u0001\u00108J\u000f\u0010\u00a3\u0001\u001a\u000206\u00a2\u0006\u0005\u0008\u00a3\u0001\u00108J\u000f\u0010\u00a4\u0001\u001a\u00020\u001f\u00a2\u0006\u0005\u0008\u00a4\u0001\u0010*J\u000f\u0010\u00a5\u0001\u001a\u00020\u001f\u00a2\u0006\u0005\u0008\u00a5\u0001\u0010*J\u0011\u0010\u00a7\u0001\u001a\u00030\u00a6\u0001\u00a2\u0006\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001J\u0011\u0010\u00a9\u0001\u001a\u00030\u00a6\u0001\u00a2\u0006\u0006\u0008\u00a9\u0001\u0010\u00a8\u0001J\u0011\u0010\u00aa\u0001\u001a\u000206H\u0000\u00a2\u0006\u0005\u0008\u00aa\u0001\u00108J\u000f\u0010[\u001a\u000206H\u0000\u00a2\u0006\u0004\u0008[\u00108J\u000f\u0010L\u001a\u000206H\u0000\u00a2\u0006\u0004\u0008L\u00108J\u000f\u0010\u007f\u001a\u000206H\u0000\u00a2\u0006\u0004\u0008\u007f\u00108J\u0011\u0010\u0093\u0001\u001a\u000206H\u0000\u00a2\u0006\u0005\u0008\u0093\u0001\u00108J\u000f\u0010P\u001a\u000206H\u0000\u00a2\u0006\u0004\u0008P\u00108J\u000f\u0010V\u001a\u000206H\u0000\u00a2\u0006\u0004\u0008V\u00108J-\u0010 \u001a\u0002062\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0e2\r\u0010\u00ab\u0001\u001a\u0008\u0012\u0004\u0012\u00020R0\u001cH\u0014\u00a2\u0006\u0005\u0008 \u0010\u00ac\u0001J\u0019\u0010\u00ad\u0001\u001a\u0002062\u0006\u0010A\u001a\u00020\u001dH\u0004\u00a2\u0006\u0005\u0008\u00ad\u0001\u0010NJ\u0019\u0010\u00ae\u0001\u001a\u0002062\u0006\u0010A\u001a\u00020\u001dH\u0004\u00a2\u0006\u0005\u0008\u00ae\u0001\u0010NJ\u0011\u0010\u00af\u0001\u001a\u000206H\u0004\u00a2\u0006\u0005\u0008\u00af\u0001\u00108J\u000f\u0010\u00b0\u0001\u001a\u000206\u00a2\u0006\u0005\u0008\u00b0\u0001\u00108J\u001b\u0010L\u001a\u0004\u0018\u00010\u001d2\u0007\u0010\u0086\u0001\u001a\u00020RH\u0004\u00a2\u0006\u0005\u0008L\u0010\u00b1\u0001R\u0015\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008 \u0010\u00b2\u0001R\u001d\u0010\u0005\u001a\u00020\u00048\u0004X\u0084\u0004\u00a2\u0006\u000f\n\u0005\u0008;\u0010\u00b3\u0001\u001a\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R\u0015\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008#\u0010\u00b6\u0001R\u0015\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008E\u0010\u00b7\u0001R\u0015\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008i\u0010\u00b8\u0001R\u001d\u0010\r\u001a\u00020\u000c8\u0004X\u0084\u0004\u00a2\u0006\u000f\n\u0005\u0008P\u0010\u00b9\u0001\u001a\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001R\u001d\u0010\u000f\u001a\u00020\u000e8\u0004X\u0084\u0004\u00a2\u0006\u000f\n\u0005\u0008V\u0010\u00bc\u0001\u001a\u0006\u0008\u00bd\u0001\u0010\u00be\u0001R\u0015\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008L\u0010\u00bf\u0001R\u001a\u0010\u0013\u001a\u00020\u00128\u0006\u00a2\u0006\u000f\n\u0005\u0008G\u0010\u00c0\u0001\u001a\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001R\u001a\u0010\u0015\u001a\u00020\u00148\u0006\u00a2\u0006\u000f\n\u0005\u00087\u0010\u00c3\u0001\u001a\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001R\u001a\u0010\u0017\u001a\u00020\u00168\u0006\u00a2\u0006\u000f\n\u0005\u0008\u007f\u0010\u00c6\u0001\u001a\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001R\u0016\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u00c9\u0001R\u001e\u0010\u00cc\u0001\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008[\u0010\u00ca\u0001\u001a\u0005\u0008\u00cb\u0001\u0010*R\u001e\u0010\u00ce\u0001\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008F\u0010\u00ca\u0001\u001a\u0005\u0008\u00cd\u0001\u0010*R\u001e\u0010\u00d0\u0001\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008I\u0010\u00ca\u0001\u001a\u0005\u0008\u00cf\u0001\u0010*R%\u0010\u00d3\u0001\u001a\u00020\u001f8DX\u0084\u0084\u0002\u00a2\u0006\u0015\n\u0005\u0008J\u0010\u00ca\u0001\u0012\u0005\u0008\u00d2\u0001\u00108\u001a\u0005\u0008\u00d1\u0001\u0010*R\u001f\u0010\u00d5\u0001\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u0089\u0001\u0010\u00ca\u0001\u001a\u0005\u0008\u00d4\u0001\u0010*R-\u0010\u00d9\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00ad\u0001\u0010\u00d6\u0001\u001a\u0005\u0008\u00d7\u0001\u0010d\"\u0005\u0008;\u0010\u00d8\u0001R\u001f\u0010\u00da\u0001\u001a\u0008\u0012\u0004\u0012\u00020R0\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0001\u0010\u00d6\u0001R#\u0010\u00dd\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001d0T8\u0004X\u0084\u0004\u00a2\u0006\u000e\n\u0005\u0008O\u0010\u00db\u0001\u001a\u0005\u0008\u00dc\u0001\u0010tR$\u0010\u00df\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001d0T8\u0004X\u0084\u0004\u00a2\u0006\u000f\n\u0006\u0008\u0091\u0001\u0010\u00db\u0001\u001a\u0005\u0008\u00de\u0001\u0010tR$\u0010\u00e1\u0001\u001a\u0008\u0012\u0004\u0012\u0002090T8\u0000X\u0080\u0004\u00a2\u0006\u000f\n\u0006\u0008\u0099\u0001\u0010\u00db\u0001\u001a\u0005\u0008\u00e0\u0001\u0010tR%\u0010\u0096\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u00e2\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0098\u0001\u0010\u00e3\u0001\u001a\u0006\u0008\u00e4\u0001\u0010\u00e5\u0001R%\u0010\u0097\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010R0\u00e2\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0088\u0001\u0010\u00e3\u0001\u001a\u0006\u0008\u00e6\u0001\u0010\u00e5\u0001R\u001f\u0010\u00e9\u0001\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u00e7\u0001\u0010\u00ca\u0001\u001a\u0005\u0008\u00e8\u0001\u0010*R\u001f\u0010\u00ec\u0001\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u00ea\u0001\u0010\u00ca\u0001\u001a\u0005\u0008\u00eb\u0001\u0010*R\'\u0010\u00f0\u0001\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00ed\u0001\u0010\u00d4\u0001\u001a\u0005\u0008\u00ee\u0001\u0010*\"\u0005\u0008;\u0010\u00ef\u0001R\u0019\u0010\u00f2\u0001\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f1\u0001\u0010\u00d4\u0001R$\u0010\u00f4\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010$0\u00e2\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008a\u0010\u00e3\u0001\u001a\u0006\u0008\u00f3\u0001\u0010\u00e5\u0001R%\u0010\u0095\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010$0\u00e2\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00f5\u0001\u0010\u00e3\u0001\u001a\u0006\u0008\u00f6\u0001\u0010\u00e5\u0001R%\u0010\u00f9\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010$0\u00e2\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00f7\u0001\u0010\u00e3\u0001\u001a\u0006\u0008\u00f8\u0001\u0010\u00e5\u0001R\u001c\u0010\u00fd\u0001\u001a\u0005\u0018\u00010\u00fa\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fb\u0001\u0010\u00fc\u0001R$\u0010\u00ab\u0001\u001a\u0008\u0012\u0004\u0012\u00020R0\u001c8\u0004X\u0084\u0004\u00a2\u0006\u000f\n\u0006\u0008\u00fe\u0001\u0010\u00d6\u0001\u001a\u0005\u0008\u00fe\u0001\u0010dR\u001d\u0010\u0080\u0002\u001a\u0008\u0012\u0004\u0012\u0002040\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ff\u0001\u0010\u00d6\u0001R#\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c8\u0004X\u0084\u0004\u00a2\u0006\u000f\n\u0006\u0008\u00b4\u0001\u0010\u00d6\u0001\u001a\u0005\u0008\u0081\u0002\u0010dR\u001f\u0010\u0083\u0002\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u00dc\u0001\u0010\u00ca\u0001\u001a\u0005\u0008\u0082\u0002\u0010*R\u001f\u0010\u0086\u0002\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u0084\u0002\u0010\u00ca\u0001\u001a\u0005\u0008\u0085\u0002\u0010*R\u001f\u0010\u0088\u0002\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u00eb\u0001\u0010\u00ca\u0001\u001a\u0005\u0008\u0087\u0002\u0010*R \u0010\u008c\u0002\u001a\u00030\u0089\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008z\u0010\u00ca\u0001\u001a\u0006\u0008\u008a\u0002\u0010\u008b\u0002R.\u0010\u0090\u0002\u001a\u0011\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u000204\u0018\u00010\u008d\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008x\u0010\u00ca\u0001\u001a\u0006\u0008\u008e\u0002\u0010\u008f\u0002R\u001e\u0010\u0092\u0002\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008u\u0010\u00ca\u0001\u001a\u0005\u0008\u0091\u0002\u0010*R \u0010\u0096\u0002\u001a\u00030\u0093\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008|\u0010\u00ca\u0001\u001a\u0006\u0008\u0094\u0002\u0010\u0095\u0002R\u001d\u0010\u0098\u0002\u001a\u00020\u001f8\u0000X\u0080\u0004\u00a2\u0006\u000e\n\u0005\u0008~\u0010\u00d4\u0001\u001a\u0005\u0008\u0097\u0002\u0010*R$\u0010\u009a\u0002\u001a\u000f\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u0002040\u008d\u00028BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0099\u0002\u0010\u008f\u0002R\u0016\u0010\u009b\u0002\u001a\u0002048BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0098\u0001\u0010bR\u001c\u0010\u009c\u0002\u001a\u0008\u0012\u0004\u0012\u0002040\u001c8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00f1\u0001\u0010dR\u001c\u0010\u009d\u0002\u001a\u0008\u0012\u0004\u0012\u0002040\u001c8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ea\u0001\u0010dR\u001c\u0010\u009e\u0002\u001a\u0008\u0012\u0004\u0012\u0002040\u001c8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ed\u0001\u0010dR\u001b\u0010\u009f\u0002\u001a\u0008\u0012\u0004\u0012\u0002040\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010dR\u001c\u0010\u00a0\u0002\u001a\u0008\u0012\u0004\u0012\u0002040\u001c8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0099\u0001\u0010dR\u0016\u0010\u00a1\u0002\u001a\u0002048BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00f7\u0001\u0010bR\u0016\u0010\u00a3\u0002\u001a\u0002048BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00a2\u0002\u0010bR\u001c\u0010\u00a5\u0002\u001a\u0008\u0012\u0004\u0012\u0002090T8DX\u0084\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00a4\u0002\u0010tR\u0013\u0010\u00a7\u0002\u001a\u00020\u001f8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a6\u0002\u0010*R\u0013\u0010\u00a9\u0002\u001a\u00020\u001f8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a8\u0002\u0010*R\u0013\u0010\u00aa\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00f5\u0001\u0010bR\u0013\u0010\u00ab\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u0089\u0001\u0010bR\u0013\u0010\u00ac\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u0084\u0002\u0010bR\u0013\u0010\u00ae\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ad\u0002\u0010bR\u0013\u0010\u00b0\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00af\u0002\u0010bR\u0016\u0010\u00b2\u0002\u001a\u0002048VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b1\u0002\u0010bR\u0013\u0010\u00b4\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b3\u0002\u0010bR\u0013\u0010\u00b6\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b5\u0002\u0010bR\u0019\u0010\u00b8\u0002\u001a\u0008\u0012\u0004\u0012\u0002040\u001c8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b7\u0002\u0010dR\u0016\u0010\u00ba\u0002\u001a\u0002048VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b9\u0002\u0010bR\u0013\u0010\u00bc\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00bb\u0002\u0010bR\u0013\u0010\u00be\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00bd\u0002\u0010bR\u0013\u0010\u00c0\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00bf\u0002\u0010bR\u0013\u0010\u00c1\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u0088\u0001\u0010bR\u0013\u0010\u00c2\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ad\u0001\u0010bR\u0015\u0010\u00c3\u0002\u001a\u00030\u00a6\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u00ff\u0001\u0010\u00a8\u0001R\u0013\u0010\u00c4\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ae\u0001\u0010bR\u0013\u0010\u00c5\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00e7\u0001\u0010bR\u0013\u0010\u00c7\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c6\u0002\u0010bR\u0013\u0010\u00c9\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c8\u0002\u0010bR\u0013\u0010\u00ca\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u0091\u0001\u0010bR\u0013\u0010\u00cc\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00cb\u0002\u0010bR\u0013\u0010\u00ce\u0002\u001a\u0002048F\u00a2\u0006\u0007\u001a\u0005\u0008\u00cd\u0002\u0010bR\u0014\u0010\u00d0\u0002\u001a\u00020$8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00fb\u0001\u0010\u00cf\u0002R\u0013\u0010\u00d2\u0002\u001a\u00020\u001f8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00d1\u0002\u0010*\u00a8\u0006\u00d3\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/a5;",
        "Landroidx/lifecycle/ViewModel;",
        "Lio/didomi/sdk/apiEvents/b;",
        "apiEventsRepository",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/V;",
        "consentRepository",
        "Lio/didomi/sdk/Z;",
        "contextHelper",
        "Lio/didomi/sdk/M2;",
        "eventsRepository",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "Lio/didomi/sdk/G8;",
        "userChoicesInfoProvider",
        "Lio/didomi/sdk/P8;",
        "userStatusRepository",
        "Lio/didomi/sdk/D8;",
        "uiProvider",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "Lio/didomi/sdk/C3;",
        "logoProvider",
        "Lio/didomi/sdk/I3;",
        "navigationManager",
        "<init>",
        "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/G8;Lio/didomi/sdk/P8;Lio/didomi/sdk/D8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/I3;)V",
        "",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "purposes",
        "",
        "a",
        "(Ljava/util/List;)Z",
        "Lio/didomi/sdk/E4;",
        "c",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "state",
        "accessibilityAnnounceState",
        "Lio/didomi/sdk/y4;",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)Lio/didomi/sdk/y4;",
        "r1",
        "()Z",
        "Lio/didomi/sdk/o0;",
        "dataProcessing",
        "Lio/didomi/sdk/x4$a;",
        "(Lio/didomi/sdk/o0;)Lio/didomi/sdk/x4$a;",
        "(Z)Lio/didomi/sdk/y4;",
        "Lio/didomi/sdk/D4;",
        "()Lio/didomi/sdk/D4;",
        "",
        "count",
        "",
        "(I)Ljava/lang/String;",
        "",
        "j",
        "()V",
        "Lio/didomi/sdk/models/InternalVendor;",
        "vendor",
        "b",
        "(Lio/didomi/sdk/models/InternalVendor;)V",
        "y1",
        "(Lio/didomi/sdk/models/InternalVendor;)Z",
        "o1",
        "p1",
        "purpose",
        "consentStatus",
        "(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "legIntState",
        "d",
        "n",
        "i",
        "W0",
        "o",
        "p",
        "(Lio/didomi/sdk/models/InternalPurpose;)Z",
        "h",
        "(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "(Lio/didomi/sdk/models/InternalPurpose;)V",
        "t",
        "f",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "category",
        "",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/Set;",
        "g",
        "(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/E4;",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/E4;",
        "(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V",
        "m",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Z",
        "x1",
        "s1",
        "u1",
        "v1",
        "C",
        "()Ljava/lang/String;",
        "D0",
        "()Ljava/util/List;",
        "",
        "Lio/didomi/sdk/w4;",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/List;",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Z)Ljava/util/List;",
        "e",
        "(Z)Ljava/util/List;",
        "P0",
        "j1",
        "Lio/didomi/sdk/events/Event;",
        "event",
        "(Lio/didomi/sdk/events/Event;)V",
        "id",
        "(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;",
        "(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "V",
        "()Ljava/util/Set;",
        "O",
        "",
        "U",
        "N",
        "T",
        "M",
        "W",
        "P",
        "X",
        "Q",
        "k",
        "(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;",
        "m1",
        "n1",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;",
        "t1",
        "X0",
        "purposeCategory",
        "w1",
        "x",
        "q",
        "V0",
        "isMainScreen",
        "(Z)Z",
        "q1",
        "z1",
        "k1",
        "item",
        "u",
        "value",
        "l",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "selectedPurposeLegIntState",
        "selectedPurpose",
        "selectedCategory",
        "w",
        "v",
        "Y0",
        "b1",
        "h1",
        "c1",
        "i1",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "a1",
        "e1",
        "Z0",
        "d1",
        "S0",
        "R0",
        "Lio/didomi/sdk/a;",
        "v0",
        "()Lio/didomi/sdk/a;",
        "x0",
        "l1",
        "categories",
        "(Ljava/util/List;Ljava/util/List;)V",
        "r",
        "s",
        "f1",
        "g1",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;",
        "Lio/didomi/sdk/apiEvents/b;",
        "Lio/didomi/sdk/H;",
        "I",
        "()Lio/didomi/sdk/H;",
        "Lio/didomi/sdk/V;",
        "Lio/didomi/sdk/Z;",
        "Lio/didomi/sdk/M2;",
        "Lio/didomi/sdk/v3;",
        "d0",
        "()Lio/didomi/sdk/v3;",
        "Lio/didomi/sdk/G8;",
        "M0",
        "()Lio/didomi/sdk/G8;",
        "Lio/didomi/sdk/P8;",
        "Lio/didomi/sdk/D8;",
        "G0",
        "()Lio/didomi/sdk/D8;",
        "Lio/didomi/sdk/V8;",
        "N0",
        "()Lio/didomi/sdk/V8;",
        "Lio/didomi/sdk/C3;",
        "f0",
        "()Lio/didomi/sdk/C3;",
        "Lio/didomi/sdk/I3;",
        "Lkotlin/Lazy;",
        "H0",
        "useCcpa",
        "I0",
        "useGdpr",
        "J0",
        "useMixedRegulation",
        "U0",
        "isTcf2_2$annotations",
        "isTcf2_2",
        "Z",
        "excludeBulkConsentButtons",
        "Ljava/util/List;",
        "getRequiredPurposes",
        "(Ljava/util/List;)V",
        "requiredPurposes",
        "requiredCategories",
        "Ljava/util/Set;",
        "J",
        "consentPurposes",
        "m0",
        "requiredPurposesLegInt",
        "getRequiredVendorsLegInt$android_release",
        "requiredVendorsLegInt",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/MutableLiveData;",
        "u0",
        "()Landroidx/lifecycle/MutableLiveData;",
        "s0",
        "y",
        "K0",
        "usePurposeTitleInPurposeCategory",
        "z",
        "L",
        "disableButtonsUntilScroll",
        "A",
        "getHasScrolledToTheBottom",
        "(Z)V",
        "hasScrolledToTheBottom",
        "B",
        "shouldAddRoomForIcon",
        "w0",
        "selectedPurposeConsentState",
        "D",
        "y0",
        "E",
        "t0",
        "selectedCategoryState",
        "Lio/didomi/sdk/m3;",
        "F",
        "Lio/didomi/sdk/m3;",
        "initialPurposesHolder",
        "G",
        "H",
        "purposeIdsInCategories",
        "j0",
        "getCanCloseWhenConsentIsMissing",
        "canCloseWhenConsentIsMissing",
        "K",
        "C0",
        "showWhenConsentIsMissing",
        "A0",
        "shouldBeCancelable",
        "Lio/didomi/sdk/k$g$a;",
        "h0",
        "()Lio/didomi/sdk/k$g$a;",
        "preferencesContent",
        "",
        "F0",
        "()Ljava/util/Map;",
        "translatableSaveTitle",
        "L0",
        "useSaveAndCloseFromConfig",
        "Lio/didomi/sdk/X4;",
        "l0",
        "()Lio/didomi/sdk/X4;",
        "regulationResources",
        "a0",
        "hasNonEssentialPurposes",
        "g0",
        "nameMacroForSelectedPurpose",
        "accessibilityPurposeActionDescription",
        "accessibilityStateDescription",
        "accessibilityStateActionDescription",
        "accessibilityStateBulkActionDescription",
        "accessibilityConsentStateActionDescription",
        "accessibilityLIStateActionDescription",
        "allPurposesText",
        "z0",
        "sensitivePersonalInfoButtonLabel",
        "n0",
        "requiredVendorsConsent",
        "B0",
        "shouldConsentBeCollected",
        "T0",
        "isSpecialFeature",
        "agreeButtonLabel",
        "accessibilityAgreeButtonActionDescription",
        "consentToggleText",
        "S",
        "disagreeButtonLabel",
        "R",
        "disagreeButtonAccessibilityActionDescription",
        "Y",
        "essentialPurposeText",
        "e0",
        "legitimateInterestToggleText",
        "i0",
        "purposeDescriptionLegal",
        "b0",
        "illustrations",
        "c0",
        "illustrationsHeaderLabel",
        "k0",
        "purposesMessageRawText",
        "r0",
        "scrollIndicatorText",
        "o0",
        "saveAndCloseButtonTitle",
        "accessibilitySaveButtonActionDescription",
        "accessibilityCloseDescription",
        "closeDetailsButtonAccessibility",
        "accessibilityClosePurposesActionDescription",
        "accessibilitySavePurposeDetailActionDescription",
        "q0",
        "saveButtonLabel",
        "E0",
        "title",
        "accessibilityHintForPurposes",
        "O0",
        "vendorsButtonLabel",
        "p0",
        "saveButtonDescriptionText",
        "()Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "bulkActionState",
        "Q0",
        "isSaveButtonEnabled",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private final C:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lio/didomi/sdk/m3;

.field private final G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private final J:Lkotlin/i;

.field private final K:Lkotlin/i;

.field private final L:Lkotlin/i;

.field private final M:Lkotlin/i;

.field private final N:Lkotlin/i;

.field private final O:Lkotlin/i;

.field private final P:Lkotlin/i;

.field private final Q:Z

.field private final a:Lio/didomi/sdk/apiEvents/b;

.field private final b:Lio/didomi/sdk/H;

.field private final c:Lio/didomi/sdk/V;

.field private final d:Lio/didomi/sdk/Z;

.field private final e:Lio/didomi/sdk/M2;

.field private final f:Lio/didomi/sdk/v3;

.field private final g:Lio/didomi/sdk/G8;

.field private final h:Lio/didomi/sdk/P8;

.field private final i:Lio/didomi/sdk/D8;

.field private final j:Lio/didomi/sdk/V8;

.field private final k:Lio/didomi/sdk/C3;

.field private final l:Lio/didomi/sdk/I3;

.field private final m:Lkotlin/i;

.field private final n:Lkotlin/i;

.field private final o:Lkotlin/i;

.field private final p:Lkotlin/i;

.field private final q:Lkotlin/i;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lkotlin/i;

.field private final z:Lkotlin/i;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/G8;Lio/didomi/sdk/P8;Lio/didomi/sdk/D8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/I3;)V
    .registers 14

    const-string v0, "apiEventsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languagesHelper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userChoicesInfoProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userStatusRepository"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiProvider"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorRepository"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoProvider"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigationManager"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/a5;->a:Lio/didomi/sdk/apiEvents/b;

    iput-object p2, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    iput-object p3, p0, Lio/didomi/sdk/a5;->c:Lio/didomi/sdk/V;

    iput-object p4, p0, Lio/didomi/sdk/a5;->d:Lio/didomi/sdk/Z;

    iput-object p5, p0, Lio/didomi/sdk/a5;->e:Lio/didomi/sdk/M2;

    iput-object p6, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    iput-object p7, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    iput-object p8, p0, Lio/didomi/sdk/a5;->h:Lio/didomi/sdk/P8;

    iput-object p9, p0, Lio/didomi/sdk/a5;->i:Lio/didomi/sdk/D8;

    iput-object p10, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    iput-object p11, p0, Lio/didomi/sdk/a5;->k:Lio/didomi/sdk/C3;

    iput-object p12, p0, Lio/didomi/sdk/a5;->l:Lio/didomi/sdk/I3;

    new-instance p1, Lio/didomi/sdk/a5$o;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$o;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->m:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/a5$p;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$p;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->n:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/a5$q;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$q;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->o:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/a5$f;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$f;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->p:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/a5$d;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$d;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->q:Lkotlin/i;

    invoke-static {p10}, Lio/didomi/sdk/W8;->c(Lio/didomi/sdk/V8;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->r:Ljava/util/List;

    invoke-virtual {p10}, Lio/didomi/sdk/V8;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->s:Ljava/util/List;

    invoke-virtual {p10}, Lio/didomi/sdk/V8;->l()Ljava/util/Set;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a7
    :goto_a7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_be

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Lio/didomi/sdk/models/InternalPurpose;

    invoke-static {p4}, Lio/didomi/sdk/p3;->a(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result p4

    if-nez p4, :cond_a7

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    :cond_be
    invoke-static {p2}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->t:Ljava/util/Set;

    iget-object p1, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-virtual {p1}, Lio/didomi/sdk/V8;->n()Ljava/util/Set;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d3
    :goto_d3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_ea

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Lio/didomi/sdk/models/InternalPurpose;

    invoke-static {p4}, Lio/didomi/sdk/p3;->a(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result p4

    if-nez p4, :cond_d3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    :cond_ea
    invoke-static {p2}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->u:Ljava/util/Set;

    iget-object p1, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-virtual {p1}, Lio/didomi/sdk/V8;->t()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->v:Ljava/util/Set;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/a5;->x:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lio/didomi/sdk/a5$r;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$r;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->y:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/a5$c;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$c;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->z:Lkotlin/i;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/a5;->C:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/a5;->D:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/a5;->E:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, p0, Lio/didomi/sdk/a5;->s:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13c
    :goto_13c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_161

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-static {p4}, Lio/didomi/sdk/t4;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    move-result-object p5

    sget-object p6, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Category:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    if-ne p5, p6, :cond_13c

    invoke-direct {p0, p4}, Lio/didomi/sdk/a5;->i(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_13c

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13c

    :cond_161
    iput-object p2, p0, Lio/didomi/sdk/a5;->G:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_16c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_180

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-direct {p0, p3}, Lio/didomi/sdk/a5;->i(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/Set;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/collections/p;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_16c

    :cond_180
    invoke-static {p1}, Lkotlin/collections/p;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->H:Ljava/util/List;

    iget-object p1, p0, Lio/didomi/sdk/a5;->s:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/p;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/f;

    move-result-object p1

    sget-object p2, Lio/didomi/sdk/a5$h;->a:Lio/didomi/sdk/a5$h;

    invoke-static {p1, p2}, Lkotlin/sequences/i;->filter(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;

    move-result-object p1

    new-instance p2, Lio/didomi/sdk/a5$i;

    invoke-direct {p2, p0}, Lio/didomi/sdk/a5$i;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1, p2}, Lkotlin/sequences/i;->mapNotNull(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;

    move-result-object p1

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->j1()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/sequences/i;->plus(Lkotlin/sequences/f;Ljava/lang/Iterable;)Lkotlin/sequences/f;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/i;->distinct(Lkotlin/sequences/f;)Lkotlin/sequences/f;

    move-result-object p1

    new-instance p2, Lio/didomi/sdk/a5$j;

    invoke-direct {p2, p0}, Lio/didomi/sdk/a5$j;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1, p2}, Lkotlin/sequences/i;->filterNot(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/i;->toList(Lkotlin/sequences/f;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->I:Ljava/util/List;

    new-instance p1, Lio/didomi/sdk/a5$b;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$b;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->J:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/a5$m;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$m;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->K:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/a5$l;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$l;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->L:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/a5$g;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$g;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->M:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/a5$n;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$n;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->N:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/a5$s;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$s;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->O:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/a5$k;

    invoke-direct {p1, p0}, Lio/didomi/sdk/a5$k;-><init>(Lio/didomi/sdk/a5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/a5;->P:Lkotlin/i;

    iget-object p1, p0, Lio/didomi/sdk/a5;->r:Ljava/util/List;

    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->a(Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lio/didomi/sdk/a5;->Q:Z

    return-void
.end method

.method private final A()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "reset_all_data_processing"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v2, "disable_all_data_processing"

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v3, "enable_all_data_processing"

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final B()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "disabled"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v2, "enabled"

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v3, "unspecified"

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final E()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    iget-object v1, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-static {v1}, Lio/didomi/sdk/I;->g(Lio/didomi/sdk/H;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "you_allow"

    goto :goto_f

    :cond_d
    const-string v1, "bulk_action_on_purposes_mobile"

    :goto_f
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final F0()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->N:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final H0()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->m:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final I0()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->n:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final J0()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->o:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final L0()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->O:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final W0()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->g(Ljava/util/Set;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->c(Ljava/util/Set;)V

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/a5;)Lio/didomi/sdk/k$g$a;
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/a5;->h0()Lio/didomi/sdk/k$g$a;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lio/didomi/sdk/o0;)Lio/didomi/sdk/x4$a;
    .registers 7

    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {p1}, Lio/didomi/sdk/o0;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Lio/didomi/sdk/x4$a;

    invoke-direct {v1, v0, p1}, Lio/didomi/sdk/x4$a;-><init>(Ljava/lang/CharSequence;Lio/didomi/sdk/o0;)V

    return-object v1
.end method

.method private final a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)Lio/didomi/sdk/y4;
    .registers 15

    invoke-direct {p0}, Lio/didomi/sdk/a5;->E()Ljava/lang/String;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    new-instance v11, Lio/didomi/sdk/y4;

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    move-object v3, v1

    goto :goto_15

    :cond_14
    move-object v3, v2

    :goto_15
    const/4 v4, 0x0

    invoke-direct {p0}, Lio/didomi/sdk/a5;->A()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0}, Lio/didomi/sdk/a5;->B()Ljava/util/List;

    move-result-object v6

    if-eqz v0, :cond_22

    move-object v8, v2

    goto :goto_23

    :cond_22
    move-object v8, v1

    :goto_23
    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v0, v11

    move-object v2, v3

    move v3, v4

    move-object v4, p1

    move v7, p2

    invoke-direct/range {v0 .. v10}, Lio/didomi/sdk/y4;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/didomi/sdk/view/mobile/DidomiToggle$b;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/internal/n;)V

    return-object v11
.end method

.method private final a(Z)Lio/didomi/sdk/y4;
    .registers 12

    invoke-direct {p0}, Lio/didomi/sdk/a5;->E()Ljava/lang/String;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    new-instance v9, Lio/didomi/sdk/y4;

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    move-object v3, v1

    goto :goto_15

    :cond_14
    move-object v3, v2

    :goto_15
    iget-object v4, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-static {v4}, Lio/didomi/sdk/I;->g(Lio/didomi/sdk/H;)Z

    move-result v4

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->F()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v5

    invoke-direct {p0}, Lio/didomi/sdk/a5;->A()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0}, Lio/didomi/sdk/a5;->B()Ljava/util/List;

    move-result-object v7

    if-eqz v0, :cond_2b

    move-object v8, v2

    goto :goto_2c

    :cond_2b
    move-object v8, v1

    :goto_2c
    move-object v0, v9

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, p1

    invoke-direct/range {v0 .. v8}, Lio/didomi/sdk/y4;-><init>(Ljava/lang/String;Ljava/lang/String;ZLio/didomi/sdk/view/mobile/DidomiToggle$b;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    return-object v9
.end method

.method private final a(I)Ljava/lang/String;
    .registers 10

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{nb}"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    const-string p1, "single_partner_count"

    goto :goto_16

    :cond_14
    const-string p1, "simple_partners_count"

    :goto_16
    move-object v2, p1

    iget-object v1, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 5

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getPurposeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1, p2}, Lio/didomi/sdk/models/InternalPurpose;->setCategory(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    invoke-direct {p0, p2}, Lio/didomi/sdk/a5;->b(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    :cond_20
    return-void
.end method

.method private final a(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    sget-object v0, Lio/didomi/sdk/a5$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p2, v0, :cond_16

    const/4 v0, 0x3

    if-eq p2, v0, :cond_12

    goto :goto_1d

    :cond_12
    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->e(Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_1d

    :cond_16
    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->x(Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->b(Lio/didomi/sdk/models/InternalPurpose;)V

    :goto_1d
    return-void
.end method

.method private final a(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final a()Z
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/a5;->c:Lio/didomi/sdk/V;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lio/didomi/sdk/a5;->t:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->c:Lio/didomi/sdk/V;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lio/didomi/sdk/a5;->u:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v2}, Lio/didomi/sdk/G8;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v0, v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v1}, Lio/didomi/sdk/G8;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    return v0
.end method

.method private final a(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_24

    :cond_c
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->isEssential()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_10

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v1, 0x0

    :goto_25
    return v1
.end method

.method public static final synthetic b(Lio/didomi/sdk/a5;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/a5;->H:Ljava/util/List;

    return-object p0
.end method

.method private final b(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final b(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 3

    iget-boolean v0, p0, Lio/didomi/sdk/a5;->B:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lio/didomi/sdk/a5;->d:Lio/didomi/sdk/Z;

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/didomi/sdk/Z;->a(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput-boolean p1, p0, Lio/didomi/sdk/a5;->B:Z

    return-void
.end method

.method private final c()Lio/didomi/sdk/D4;
    .registers 15

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->k0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_25

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->k0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lio/didomi/sdk/V5;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v2, 0x1

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    const/4 v4, 0x0

    if-eqz v2, :cond_5c

    new-instance v5, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe

    const/4 v13, 0x0

    const-string v8, "our_privacy_policy"

    invoke-static/range {v7 .. v13}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "[didomi_link_external]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5d

    :cond_5c
    move-object v5, v4

    :goto_5d
    if-eqz v2, :cond_6d

    iget-object v6, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe

    const/4 v12, 0x0

    const-string v7, "link_privacy_policy"

    invoke-static/range {v6 .. v12}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_6d
    new-instance v2, Lio/didomi/sdk/D4;

    invoke-static {v0}, Lio/didomi/sdk/V5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/V5;->k(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-direct {v2, v0, v5, v4, v1}, Lio/didomi/sdk/D4;-><init>(Landroid/text/Spanned;Landroid/text/Spanned;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private final c(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->v(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->b(Lio/didomi/sdk/models/InternalPurpose;)V

    :cond_9
    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->w(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/models/InternalPurpose;)V

    :cond_12
    return-void
.end method

.method public static final synthetic c(Lio/didomi/sdk/a5;)Z
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/a5;->H0()Z

    move-result p0

    return p0
.end method

.method private final c(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 6

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_29

    :cond_10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-static {v3, v1}, Lio/didomi/sdk/H8;->a(Lio/didomi/sdk/G8;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_86

    :cond_29
    :goto_29
    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_51

    :cond_38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-static {v3, v1}, Lio/didomi/sdk/H8;->a(Lio/didomi/sdk/G8;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_86

    :cond_51
    :goto_51
    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getSpecialFeatureIds()Ljava/util/List;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_60

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_85

    :cond_60
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_64
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-virtual {v1, v0}, Lio/didomi/sdk/V8;->e(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/didomi/sdk/H8;->a(Lio/didomi/sdk/G8;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_64

    goto :goto_86

    :cond_85
    :goto_85
    const/4 v2, 0x0

    :goto_86
    return v2
.end method

.method private final c(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/sdk/E4;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-static {v0}, Lio/didomi/sdk/I;->e(Lio/didomi/sdk/H;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lio/didomi/sdk/a5;->Q:Z

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method private final d(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    sget-object v0, Lio/didomi/sdk/a5$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p2, v0, :cond_f

    goto :goto_2e

    :cond_f
    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->d(Lio/didomi/sdk/models/InternalPurpose;)V

    new-instance p2, Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    goto :goto_2e

    :cond_1f
    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/models/InternalPurpose;)V

    new-instance p2, Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    :goto_2e
    return-void
.end method

.method private final d(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    sget-object v0, Lio/didomi/sdk/a5$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    goto :goto_26

    :cond_12
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->l()V

    invoke-direct {p0}, Lio/didomi/sdk/a5;->o()V

    goto :goto_26

    :cond_19
    invoke-direct {p0}, Lio/didomi/sdk/a5;->W0()V

    invoke-direct {p0}, Lio/didomi/sdk/a5;->o()V

    goto :goto_26

    :cond_20
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->g()V

    invoke-direct {p0}, Lio/didomi/sdk/a5;->j()V

    :goto_26
    return-void
.end method

.method public static final synthetic d(Lio/didomi/sdk/a5;)Z
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/a5;->I0()Z

    move-result p0

    return p0
.end method

.method public static final synthetic e(Lio/didomi/sdk/a5;)Z
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/a5;->J0()Z

    move-result p0

    return p0
.end method

.method private final f(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->v(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->e(Lio/didomi/sdk/models/InternalPurpose;)V

    :cond_9
    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->w(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->d(Lio/didomi/sdk/models/InternalPurpose;)V

    :cond_12
    return-void
.end method

.method public static final synthetic f(Lio/didomi/sdk/a5;)Z
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/a5;->L0()Z

    move-result p0

    return p0
.end method

.method private final g(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/E4;
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual/range {p0 .. p1}, Lio/didomi/sdk/a5;->k(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/a5;->Y()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v3, v2

    sget-object v5, Lio/didomi/sdk/w4$a;->f:Lio/didomi/sdk/w4$a;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v6

    iget-boolean v2, v0, Lio/didomi/sdk/a5;->B:Z

    if-eqz v2, :cond_32

    iget-object v2, v0, Lio/didomi/sdk/a5;->d:Lio/didomi/sdk/Z;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/models/InternalPurpose;->getCategory()Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    move-result-object v7

    if-eqz v7, :cond_2c

    invoke-virtual {v7}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getIcon()Ljava/lang/String;

    move-result-object v1

    :cond_2c
    invoke-virtual {v2, v1}, Lio/didomi/sdk/Z;->a(Ljava/lang/String;)I

    move-result v1

    move v7, v1

    goto :goto_34

    :cond_32
    const/4 v1, -0x1

    const/4 v7, -0x1

    :goto_34
    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/models/InternalPurpose;->isEssential()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterestOnly()Z

    move-result v11

    invoke-virtual/range {p0 .. p1}, Lio/didomi/sdk/a5;->l(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/models/InternalPurpose;->isEssential()Z

    move-result v1

    if-eqz v1, :cond_62

    sget-object v1, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v2, v12

    const/4 v12, 0x1

    aput-object v9, v2, v12

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s, %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v1

    goto :goto_63

    :cond_62
    move-object v12, v8

    :goto_63
    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/a5;->w()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/a5;->z()Ljava/util/List;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/a5;->B()Ljava/util/List;

    move-result-object v16

    new-instance v1, Lio/didomi/sdk/E4;

    const/16 v17, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lio/didomi/sdk/E4;-><init>(JLio/didomi/sdk/w4$a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Ljava/util/List;Ljava/util/List;Z)V

    :cond_77
    return-object v1
.end method

.method private final g(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/E4;
    .registers 20

    move-object/from16 v0, p0

    if-eqz p1, :cond_6b

    invoke-virtual/range {p0 .. p1}, Lio/didomi/sdk/a5;->e(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/a5;->Y()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p1}, Lio/didomi/sdk/a5;->k(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v2, v1

    sget-object v4, Lio/didomi/sdk/w4$a;->c:Lio/didomi/sdk/w4$a;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object v5

    iget-boolean v1, v0, Lio/didomi/sdk/a5;->B:Z

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lio/didomi/sdk/a5;->d:Lio/didomi/sdk/Z;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lio/didomi/sdk/Z;->a(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    goto :goto_31

    :cond_2f
    const/4 v1, -0x1

    const/4 v6, -0x1

    :goto_31
    invoke-virtual/range {p0 .. p1}, Lio/didomi/sdk/a5;->f(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v13

    if-eqz v9, :cond_53

    sget-object v1, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-static {v10, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v10, "%s, %s"

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "format(...)"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v1

    goto :goto_54

    :cond_53
    move-object v11, v7

    :goto_54
    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/a5;->w()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/a5;->z()Ljava/util/List;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/a5;->B()Ljava/util/List;

    move-result-object v15

    new-instance v17, Lio/didomi/sdk/E4;

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lio/didomi/sdk/E4;-><init>(JLio/didomi/sdk/w4$a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Ljava/util/List;Ljava/util/List;Z)V

    goto :goto_6d

    :cond_6b
    const/16 v17, 0x0

    :goto_6d
    return-object v17
.end method

.method private final g0()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_14

    const-string v0, ""

    :cond_14
    const-string v1, "{targetName}"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final h(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_20

    :cond_f
    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->f()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result p1

    if-eqz p1, :cond_1e

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_20

    :cond_1e
    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_20
    return-object p1
.end method

.method private final h0()Lio/didomi/sdk/k$g$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->M:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/k$g$a;

    return-object v0
.end method

.method private final i(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {p0, v1}, Lio/didomi/sdk/a5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-eqz v1, :cond_d

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2b
    invoke-static {v0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private final i()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->i()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    iget-object v1, p0, Lio/didomi/sdk/a5;->v:Ljava/util/Set;

    invoke-static {v1}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->f(Ljava/util/Set;)V

    return-void
.end method

.method private final j(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_11

    :cond_f
    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_11
    return-object p1
.end method

.method private final j()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->i(Ljava/util/Set;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    iget-object v1, p0, Lio/didomi/sdk/a5;->u:Ljava/util/Set;

    invoke-static {v1}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->e(Ljava/util/Set;)V

    return-void
.end method

.method private final l0()Lio/didomi/sdk/X4;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->P:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/X4;

    return-object v0
.end method

.method private final n()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    iget-object v1, p0, Lio/didomi/sdk/a5;->v:Ljava/util/Set;

    invoke-static {v1}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->j(Ljava/util/Set;)V

    return-void
.end method

.method private final o()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    iget-object v1, p0, Lio/didomi/sdk/a5;->u:Ljava/util/Set;

    invoke-static {v1}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->i(Ljava/util/Set;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->e(Ljava/util/Set;)V

    return-void
.end method

.method private final o1()V
    .registers 1

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->m()V

    invoke-direct {p0}, Lio/didomi/sdk/a5;->n()V

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->k()V

    invoke-direct {p0}, Lio/didomi/sdk/a5;->o()V

    return-void
.end method

.method private final p(Lio/didomi/sdk/models/InternalPurpose;)Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->u:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final p1()V
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->f()V

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->h()V

    iget-object v0, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$g;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lio/didomi/sdk/a5;->j()V

    invoke-direct {p0}, Lio/didomi/sdk/a5;->i()V

    goto :goto_23

    :cond_1d
    invoke-direct {p0}, Lio/didomi/sdk/a5;->o()V

    invoke-direct {p0}, Lio/didomi/sdk/a5;->n()V

    :goto_23
    return-void
.end method

.method private final r1()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-static {v0}, Lio/didomi/sdk/I;->l(Lio/didomi/sdk/H;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-static {v0}, Lio/didomi/sdk/I;->a(Lio/didomi/sdk/H;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method private final t()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/a5;->g0()Ljava/util/Map;

    move-result-object v3

    const-string v1, "reset_consent_action"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/a5;->g0()Ljava/util/Map;

    move-result-object v4

    const-string v2, "disable_consent_action"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/a5;->g0()Ljava/util/Map;

    move-result-object v5

    const-string v3, "enable_consent_action"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final t(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->v(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->x(Lio/didomi/sdk/models/InternalPurpose;)V

    :cond_9
    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->w(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->d(Lio/didomi/sdk/models/InternalPurpose;)V

    :cond_12
    return-void
.end method

.method private final v()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/a5;->g0()Ljava/util/Map;

    move-result-object v3

    const-string v1, "enable_li_action"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/a5;->g0()Ljava/util/Map;

    move-result-object v4

    const-string v2, "disable_li_action"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/a5;->g0()Ljava/util/Map;

    move-result-object v5

    const-string v3, "enable_li_action"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final w()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "know_more_about_this_purpose"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final y1()V
    .registers 4

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->n0()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v1}, Lio/didomi/sdk/G8;->g()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/h0;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v1}, Lio/didomi/sdk/G8;->c()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/h0;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalVendor;

    invoke-direct {p0, v1}, Lio/didomi/sdk/a5;->c(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-direct {p0, v1}, Lio/didomi/sdk/a5;->b(Lio/didomi/sdk/models/InternalVendor;)V

    goto :goto_1c

    :cond_32
    invoke-direct {p0, v1}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/models/InternalVendor;)V

    goto :goto_1c

    :cond_36
    iget-object v0, p0, Lio/didomi/sdk/a5;->v:Ljava/util/Set;

    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v1}, Lio/didomi/sdk/G8;->i()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/h0;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v1}, Lio/didomi/sdk/G8;->e()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/h0;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalVendor;

    invoke-direct {p0, v1}, Lio/didomi/sdk/a5;->c(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v2}, Lio/didomi/sdk/G8;->i()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_6c
    iget-object v2, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v2}, Lio/didomi/sdk/G8;->e()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_76
    return-void
.end method

.method private final z()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "reset_this_purpose"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v2, "disable_this_purpose"

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v3, "enable_this_purpose"

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final z0()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    iget-object v1, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->e()Lio/didomi/sdk/k$f;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$f;->a()Lio/didomi/sdk/k$f$b;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$f$b;->d()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A0()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->L:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final B0()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->c:Lio/didomi/sdk/V;

    invoke-virtual {v0}, Lio/didomi/sdk/V;->q()Z

    move-result v0

    return v0
.end method

.method public final C()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "list_of_additional_data_processing_on_purposes"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C0()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->K:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final D()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    iget-object v1, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g;->b()Lio/didomi/sdk/k$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "agree_to_all_5b7ca45d"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final D0()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/o0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->g()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/a5$e;

    invoke-direct {v1}, Lio/didomi/sdk/a5$e;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/p;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final E0()Ljava/lang/String;
    .registers 4

    sget-object v0, Lio/didomi/sdk/f4;->a:Lio/didomi/sdk/f4;

    iget-object v1, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    iget-object v2, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    invoke-virtual {v0, v1, v2}, Lio/didomi/sdk/f4;->a(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final F()Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_14

    :cond_9
    invoke-direct {p0}, Lio/didomi/sdk/a5;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_14

    :cond_12
    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_14
    return-object v0
.end method

.method protected final G()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->G:Ljava/util/List;

    return-object v0
.end method

.method public final G0()Lio/didomi/sdk/D8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->i:Lio/didomi/sdk/D8;

    return-object v0
.end method

.method public final H()Lio/didomi/sdk/a;
    .registers 11

    new-instance v9, Lio/didomi/sdk/a;

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "close"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v3, "go_back_to_purposes_list"

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/didomi/sdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;ILkotlin/jvm/internal/n;)V

    return-object v9
.end method

.method protected final I()Lio/didomi/sdk/H;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    return-object v0
.end method

.method protected final J()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->t:Ljava/util/Set;

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->T0()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "opt_in"

    invoke-static/range {v1 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_13
    iget-object v1, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "consent"

    invoke-static/range {v1 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0
.end method

.method public final K0()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->y:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final L()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->z:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final M()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final M0()Lio/didomi/sdk/G8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    return-object v0
.end method

.method public final N()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final N0()Lio/didomi/sdk/V8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    return-object v0
.end method

.method public final O()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->b()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/InternalPurpose;

    invoke-static {v3}, Lio/didomi/sdk/p3;->a(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_26
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final O0()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "manage_our_partners"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public P0()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-static {v0}, Lio/didomi/sdk/W8;->c(Lio/didomi/sdk/V8;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/a5;->r:Ljava/util/List;

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->j1()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final Q()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final Q0()Z
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->p()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->w1()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    invoke-direct {p0}, Lio/didomi/sdk/a5;->H0()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public final R()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "refuse_data_processing"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final R0()Z
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->V()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->O()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lio/didomi/sdk/a5;->t:Ljava/util/Set;

    invoke-static {v2, v0}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_28
    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public final S()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    iget-object v1, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g;->b()Lio/didomi/sdk/k$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "disagree_to_all_c0355616"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final S0()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->isEssential()Z

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public final T()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->h()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final T0()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature()Z

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public final U()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final U0()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->p:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final V()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->f()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/InternalPurpose;

    invoke-static {v3}, Lio/didomi/sdk/p3;->a(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_26
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final V0()V
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/a5;->h:Lio/didomi/sdk/P8;

    invoke-virtual {v0}, Lio/didomi/sdk/P8;->d()Lio/didomi/sdk/models/UserStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/models/UserStatus;->getVendors()Lio/didomi/sdk/models/UserStatus$Vendors;

    move-result-object v0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->n0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v0}, Lio/didomi/sdk/models/UserStatus$Vendors;->getGlobalConsent()Lio/didomi/sdk/models/UserStatus$Ids;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/models/UserStatus$Ids;->getEnabled()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-direct {p0, v2}, Lio/didomi/sdk/a5;->b(Lio/didomi/sdk/models/InternalVendor;)V

    goto :goto_12

    :cond_34
    invoke-virtual {v0}, Lio/didomi/sdk/models/UserStatus$Vendors;->getConsent()Lio/didomi/sdk/models/UserStatus$Ids;

    move-result-object v3

    invoke-virtual {v3}, Lio/didomi/sdk/models/UserStatus$Ids;->getDisabled()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-direct {p0, v2}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/models/InternalVendor;)V

    goto :goto_12

    :cond_4a
    return-void
.end method

.method public final W()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final X()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->i()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final X0()Z
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->V()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->O()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->T()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->T()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->u:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_3a

    :cond_2e
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->M()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    return v0
.end method

.method public Y()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "essential_purpose_label"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Y0()V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/a5;->o1()V

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->l1()V

    new-instance v0, Lio/didomi/sdk/events/PreferencesClickAgreeToAllEvent;

    invoke-direct {v0}, Lio/didomi/sdk/events/PreferencesClickAgreeToAllEvent;-><init>()V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->l:Lio/didomi/sdk/I3;

    invoke-virtual {v0}, Lio/didomi/sdk/I3;->b()V

    iget-object v0, p0, Lio/didomi/sdk/a5;->l:Lio/didomi/sdk/I3;

    invoke-virtual {v0}, Lio/didomi/sdk/I3;->a()V

    return-void
.end method

.method public final Z()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->q:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final Z0()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->F:Lio/didomi/sdk/m3;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-static {v0, v1}, Lio/didomi/sdk/n3;->a(Lio/didomi/sdk/m3;Lio/didomi/sdk/G8;)V

    :cond_9
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->k1()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;
    .registers 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {v2}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    check-cast v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    return-object v1
.end method

.method public final a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            "Z)",
            "Ljava/util/List<",
            "Lio/didomi/sdk/w4;",
            ">;"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {p0, v3}, Lio/didomi/sdk/a5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    invoke-static {v2}, Lkotlin/collections/p;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/didomi/sdk/a5;->d(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->f(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)Lio/didomi/sdk/y4;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4f
    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {p0, v1}, Lio/didomi/sdk/a5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6e
    :goto_6e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalPurpose;

    invoke-direct {p0, v1}, Lio/didomi/sdk/a5;->g(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/E4;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_84
    invoke-static {p1}, Lkotlin/collections/p;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lkotlin/collections/p;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/didomi/sdk/events/Event;)V
    .registers 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->e:Lio/didomi/sdk/M2;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/M2;->c(Lio/didomi/sdk/events/Event;)V

    return-void
.end method

.method public final a(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->p(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/G8;->b(Lio/didomi/sdk/models/InternalPurpose;)V

    :cond_10
    return-void
.end method

.method public final a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 7

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {p0, v2}, Lio/didomi/sdk/a5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalPurpose;->isEssential()Z

    move-result v3

    if-nez v3, :cond_36

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_4d
    sget-object v1, Lio/didomi/sdk/a5$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_8f

    const/4 v1, 0x3

    if-eq p2, v1, :cond_6f

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_af

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-direct {p0, p2}, Lio/didomi/sdk/a5;->t(Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_5f

    :cond_6f
    new-instance p2, Lio/didomi/sdk/events/PreferencesClickCategoryAgreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickCategoryAgreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_af

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-direct {p0, p2}, Lio/didomi/sdk/a5;->f(Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_7f

    :cond_8f
    new-instance p2, Lio/didomi/sdk/events/PreferencesClickCategoryDisagreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickCategoryDisagreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_af

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-direct {p0, p2}, Lio/didomi/sdk/a5;->c(Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_9f

    :cond_af
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->f1()V

    return-void
.end method

.method public final a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/a5$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    goto :goto_31

    :cond_17
    new-instance v0, Lio/didomi/sdk/events/PreferencesClickAgreeToAllPurposesEvent;

    invoke-direct {v0}, Lio/didomi/sdk/events/PreferencesClickAgreeToAllPurposesEvent;-><init>()V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    goto :goto_31

    :cond_20
    new-instance v0, Lio/didomi/sdk/events/PreferencesClickResetAllPurposesEvent;

    invoke-direct {v0}, Lio/didomi/sdk/events/PreferencesClickResetAllPurposesEvent;-><init>()V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    goto :goto_31

    :cond_29
    new-instance v0, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllPurposesEvent;

    invoke-direct {v0}, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllPurposesEvent;-><init>()V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    :goto_31
    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->d(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    return-void
.end method

.method protected a(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/List<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;)V"
        }
    .end annotation

    const-string v0, "purposes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "categories"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5c

    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->i(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/Set;

    move-result-object p1

    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x0

    goto :goto_55

    :cond_13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lio/didomi/sdk/a5;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v3

    if-nez v3, :cond_2b

    goto :goto_18

    :cond_2b
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->V()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v3}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->O()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v3}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalPurpose;->isEssential()Z

    move-result v4

    if-nez v4, :cond_4d

    iget-object v4, p0, Lio/didomi/sdk/a5;->t:Ljava/util/Set;

    invoke-static {v4, v3}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_18

    invoke-static {}, Lkotlin/collections/p;->throwCountOverflow()V

    goto :goto_18

    :cond_55
    :goto_55
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne v2, p1, :cond_5c

    const/4 v0, 0x1

    :cond_5c
    return v0
.end method

.method public final a0()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/a5;->Q:Z

    return v0
.end method

.method public final a1()V
    .registers 3

    sget-object v0, Lio/didomi/sdk/m3;->e:Lio/didomi/sdk/m3$a;

    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0, v1}, Lio/didomi/sdk/m3$a;->a(Lio/didomi/sdk/G8;)Lio/didomi/sdk/m3;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/a5;->F:Lio/didomi/sdk/m3;

    return-void
.end method

.method public final b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;
    .registers 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    check-cast v1, Lio/didomi/sdk/models/InternalPurpose;

    return-object v1
.end method

.method public final b(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/G8;->a(Lio/didomi/sdk/models/InternalPurpose;)V

    return-void
.end method

.method public final b(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 5

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    sget-object v0, Lio/didomi/sdk/a5$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    goto :goto_35

    :cond_1c
    new-instance v0, Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    goto :goto_35

    :cond_29
    new-instance v0, Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    :goto_35
    iget-object p1, p0, Lio/didomi/sdk/a5;->C:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/didomi/sdk/a5;->a:Lio/didomi/sdk/apiEvents/b;

    invoke-virtual {p1}, Lio/didomi/sdk/apiEvents/b;->h()V

    return-void
.end method

.method public final b(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->C:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected final b(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/a5;->r:Ljava/util/List;

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/a5;->A:Z

    return-void
.end method

.method public final b()Z
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/a5;->c:Lio/didomi/sdk/V;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lio/didomi/sdk/a5;->t:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->c:Lio/didomi/sdk/V;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lio/didomi/sdk/a5;->u:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v2}, Lio/didomi/sdk/G8;->f()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v0, v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v1}, Lio/didomi/sdk/G8;->h()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    return v0
.end method

.method public final b0()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->getIllustrations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_37

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_37
    const/4 v1, 0x0

    :cond_38
    if-nez v1, :cond_3e

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_3e
    return-object v1
.end method

.method public final b1()V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/a5;->p1()V

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->l1()V

    new-instance v0, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllEvent;

    invoke-direct {v0}, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllEvent;-><init>()V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->l:Lio/didomi/sdk/I3;

    invoke-virtual {v0}, Lio/didomi/sdk/I3;->b()V

    iget-object v0, p0, Lio/didomi/sdk/a5;->l:Lio/didomi/sdk/I3;

    invoke-virtual {v0}, Lio/didomi/sdk/I3;->a()V

    return-void
.end method

.method public final c(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ")",
            "Ljava/util/List<",
            "Lio/didomi/sdk/w4;",
            ">;"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {p0, v3}, Lio/didomi/sdk/a5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->K0()Z

    move-result v1

    if-eqz v1, :cond_42

    new-instance v1, Lio/didomi/sdk/z4;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->d(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v4, v3}, Lio/didomi/sdk/z4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_42
    new-instance v1, Lio/didomi/sdk/z4;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->e(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->d(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lio/didomi/sdk/z4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_52
    invoke-virtual {p0, v2}, Lio/didomi/sdk/a5;->d(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->f(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)Lio/didomi/sdk/y4;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_64
    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_71
    :goto_71
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {p0, v2}, Lio/didomi/sdk/a5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v2

    if-eqz v2, :cond_71

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_90
    :goto_90
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-direct {p0, v2}, Lio/didomi/sdk/a5;->g(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/E4;

    move-result-object v2

    if-eqz v2, :cond_90

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_90

    :cond_a6
    invoke-static {p1}, Lkotlin/collections/p;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final c(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/a5;->d(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/a5;->c(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object p1, p0, Lio/didomi/sdk/a5;->a:Lio/didomi/sdk/apiEvents/b;

    invoke-virtual {p1}, Lio/didomi/sdk/apiEvents/b;->h()V

    return-void
.end method

.method public final c(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->D:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Z)Z
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$a;->l()Z

    move-result v1

    if-nez v1, :cond_1f

    if-eqz p1, :cond_1d

    invoke-virtual {v0}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$g;->g()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method

.method public c0()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "purpose_illustration_explanation"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c1()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->l:Lio/didomi/sdk/I3;

    invoke-virtual {v0}, Lio/didomi/sdk/I3;->b()V

    return-void
.end method

.method protected final d(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;
    .registers 5

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getDescription()Ljava/util/Map;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/E4;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/didomi/sdk/a5;->G:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-direct {p0, v3}, Lio/didomi/sdk/a5;->g(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/E4;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_26
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lio/didomi/sdk/a5;->I:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/models/InternalPurpose;

    invoke-direct {p0, v3}, Lio/didomi/sdk/a5;->g(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/E4;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_4a
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final d(Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lio/didomi/sdk/w4;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/didomi/sdk/a5;->c(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->a(Z)Lio/didomi/sdk/y4;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lkotlin/collections/p;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->p(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/G8;->d(Lio/didomi/sdk/models/InternalPurpose;)V

    :cond_10
    return-void
.end method

.method protected final d(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "purposes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-static {v0}, Lio/didomi/sdk/I;->f(Lio/didomi/sdk/H;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method

.method protected final d0()Lio/didomi/sdk/v3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    return-object v0
.end method

.method public final d1()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/a5;->F:Lio/didomi/sdk/m3;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-static {v0, v1}, Lio/didomi/sdk/n3;->a(Lio/didomi/sdk/m3;Lio/didomi/sdk/G8;)V

    :cond_9
    iget-object v0, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lio/didomi/sdk/a5;->D:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0}, Lio/didomi/sdk/a5;->j(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lio/didomi/sdk/a5;->C:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, v0}, Lio/didomi/sdk/a5;->h(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_25
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->k1()V

    return-void
.end method

.method public final e(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;
    .registers 5

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getName()Ljava/util/Map;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/w4;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lio/didomi/sdk/a5;->c()Lio/didomi/sdk/D4;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/didomi/sdk/a5;->c(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lio/didomi/sdk/a5;->a(Z)Lio/didomi/sdk/y4;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->s1()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->C()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lio/didomi/sdk/a5;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->D0()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/didomi/sdk/o0;

    invoke-direct {p0, v5}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/o0;)Lio/didomi/sdk/x4$a;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_56
    new-instance v3, Lio/didomi/sdk/x4;

    invoke-direct {v3, v1, v2, v4}, Lio/didomi/sdk/x4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5e
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->u1()Z

    move-result v1

    if-eqz v1, :cond_86

    new-instance v1, Lio/didomi/sdk/F4;

    iget-object v2, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    const-string v3, "sdk_storage_disclosure_title"

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    const-string v4, "sdk_storage_disclosure_accessibility"

    invoke-static/range {v3 .. v9}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/didomi/sdk/F4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_86
    invoke-direct {p0}, Lio/didomi/sdk/a5;->r1()Z

    move-result v1

    if-eqz v1, :cond_98

    new-instance v1, Lio/didomi/sdk/B4;

    invoke-direct {p0}, Lio/didomi/sdk/a5;->z0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/didomi/sdk/B4;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_98
    new-instance v1, Lio/didomi/sdk/C4;

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->O0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/didomi/sdk/C4;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final e(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/G8;->c(Lio/didomi/sdk/models/InternalPurpose;)V

    return-void
.end method

.method public final e(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/a5$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_24

    const/4 v0, 0x2

    if-eq p2, v0, :cond_20

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1c

    goto :goto_27

    :cond_1c
    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->s(Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_27

    :cond_20
    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->t(Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_27

    :cond_24
    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->r(Lio/didomi/sdk/models/InternalPurpose;)V

    :goto_27
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->f1()V

    return-void
.end method

.method public final e0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "legitimate_interest"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e1()V
    .registers 3

    sget-object v0, Lio/didomi/sdk/m3;->e:Lio/didomi/sdk/m3$a;

    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0, v1}, Lio/didomi/sdk/m3$a;->a(Lio/didomi/sdk/G8;)Lio/didomi/sdk/m3;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/a5;->F:Lio/didomi/sdk/m3;

    return-void
.end method

.method public final f(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 5

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {p0, v1}, Lio/didomi/sdk/a5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->isEssential()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_48
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {p0, v1}, Lio/didomi/sdk/a5;->l(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_6b
    invoke-static {v0}, Lkotlin/collections/p;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7d

    invoke-static {p1}, Lkotlin/collections/p;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_7f

    :cond_7d
    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_7f
    return-object p1
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->g(Ljava/util/Set;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    iget-object v1, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-virtual {v1}, Lio/didomi/sdk/V8;->l()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->c(Ljava/util/Set;)V

    return-void
.end method

.method public final f0()Lio/didomi/sdk/C3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->k:Lio/didomi/sdk/C3;

    return-object v0
.end method

.method protected final f1()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->a:Lio/didomi/sdk/apiEvents/b;

    invoke-virtual {v0}, Lio/didomi/sdk/apiEvents/b;->h()V

    return-void
.end method

.method public final g()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->g(Ljava/util/Set;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->l()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    iget-object v2, p0, Lio/didomi/sdk/a5;->c:Lio/didomi/sdk/V;

    invoke-virtual {v2, v0}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/didomi/sdk/G8;->c(Ljava/util/Set;)V

    return-void
.end method

.method public final g1()V
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->C0()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lio/didomi/sdk/a5;->a:Lio/didomi/sdk/apiEvents/b;

    invoke-virtual {v0}, Lio/didomi/sdk/apiEvents/b;->k()V

    return-void
.end method

.method protected final h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;
    .registers 4

    const-string v0, "purposeCategory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/didomi/sdk/t4;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Purpose:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    if-ne v0, v1, :cond_16

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getPurposeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return-object p1
.end method

.method public final h()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->n0()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->d(Ljava/util/Set;)V

    return-void
.end method

.method public final h1()V
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->z1()V

    new-instance v0, Lio/didomi/sdk/events/PreferencesClickSaveChoicesEvent;

    invoke-direct {v0}, Lio/didomi/sdk/events/PreferencesClickSaveChoicesEvent;-><init>()V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->l:Lio/didomi/sdk/I3;

    invoke-virtual {v0}, Lio/didomi/sdk/I3;->b()V

    iget-object v0, p0, Lio/didomi/sdk/a5;->l:Lio/didomi/sdk/I3;

    invoke-virtual {v0}, Lio/didomi/sdk/I3;->a()V

    return-void
.end method

.method public final i(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->getDescriptionLegal()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lio/didomi/sdk/V5;->l(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i1()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->l:Lio/didomi/sdk/I3;

    invoke-virtual {v0}, Lio/didomi/sdk/I3;->b()V

    return-void
.end method

.method public final j(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 3

    const-string v0, "selectedCategory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->E:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->f(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected final j0()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->I:Ljava/util/List;

    return-object v0
.end method

.method public final j1()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->r:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/p;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/p3;->a(Ljava/util/List;)V

    iget-object v1, p0, Lio/didomi/sdk/a5;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    iget-object v1, p0, Lio/didomi/sdk/a5;->s:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lio/didomi/sdk/a5;->a(Ljava/util/List;Ljava/util/List;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/didomi/sdk/a5;->B:Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    iget-object v3, p0, Lio/didomi/sdk/a5;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-direct {p0, v2, v4}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    goto :goto_30

    :cond_40
    return-object v0
.end method

.method public final k(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final k()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    iget-object v1, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-virtual {v1}, Lio/didomi/sdk/V8;->l()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->g(Ljava/util/Set;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->c(Ljava/util/Set;)V

    return-void
.end method

.method public final k(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Z
    .registers 5

    const-string v0, "purposeCategory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    goto :goto_37

    :cond_11
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    goto :goto_36

    :cond_19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->isEssential()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v1, 0x1

    :cond_36
    :goto_36
    xor-int/2addr v1, v2

    :goto_37
    return v1
.end method

.method public final k0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    iget-object v1, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g;->b()Lio/didomi/sdk/k$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->j()Ljava/util/Map;

    move-result-object v1

    const-string v2, "preferences_message"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k1()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->C:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->D:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 4

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v1}, Lio/didomi/sdk/G8;->f()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->v(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v1

    if-nez v1, :cond_2c

    :cond_19
    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v1}, Lio/didomi/sdk/G8;->h()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->w(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_53

    :cond_2c
    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v1}, Lio/didomi/sdk/G8;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->v(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v1

    if-nez v1, :cond_55

    :cond_3e
    iget-object v1, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v1}, Lio/didomi/sdk/G8;->d()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v1

    if-nez v1, :cond_50

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->w(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result p1

    if-nez p1, :cond_55

    :cond_50
    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_55

    :cond_53
    :goto_53
    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :cond_55
    :goto_55
    return-object v0
.end method

.method public final l()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    iget-object v1, p0, Lio/didomi/sdk/a5;->c:Lio/didomi/sdk/V;

    iget-object v2, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-virtual {v2}, Lio/didomi/sdk/V8;->l()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/didomi/sdk/V;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->g(Ljava/util/Set;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->c(Ljava/util/Set;)V

    return-void
.end method

.method public final l(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->x:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final l1()V
    .registers 15

    iget-object v0, p0, Lio/didomi/sdk/a5;->c:Lio/didomi/sdk/V;

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->U()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->N()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->T()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->M()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->W()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->P()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->X()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->Q()Ljava/util/Set;

    move-result-object v8

    iget-object v11, p0, Lio/didomi/sdk/a5;->a:Lio/didomi/sdk/apiEvents/b;

    iget-object v12, p0, Lio/didomi/sdk/a5;->e:Lio/didomi/sdk/M2;

    iget-object v13, p0, Lio/didomi/sdk/a5;->h:Lio/didomi/sdk/P8;

    const/4 v9, 0x1

    const-string v10, "click"

    invoke-virtual/range {v0 .. v13}, Lio/didomi/sdk/V;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z

    return-void
.end method

.method public final m(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->U0()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-static {v0, p1}, Lio/didomi/sdk/W8;->a(Lio/didomi/sdk/V8;Lio/didomi/sdk/models/InternalPurpose;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return-object p1
.end method

.method public final m()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->n0()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->h(Ljava/util/Set;)V

    return-void
.end method

.method public final m(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Z
    .registers 4

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {p0, v1}, Lio/didomi/sdk/a5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_28
    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->d(Ljava/util/List;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected final m0()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->u:Ljava/util/Set;

    return-object v0
.end method

.method public final m1()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->isConsentNotEssential()Z

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public final n(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->U0()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-static {v0, p1}, Lio/didomi/sdk/W8;->b(Lio/didomi/sdk/V8;Lio/didomi/sdk/models/InternalPurpose;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return-object p1
.end method

.method protected final n0()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->r()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final n1()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterestNotEssential()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public final o(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 4

    const-string v0, "selectedPurpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->D:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->j(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->C:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->h(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final o0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/a5;->F0()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0}, Lio/didomi/sdk/a5;->l0()Lio/didomi/sdk/X4;

    move-result-object v2

    invoke-interface {v2}, Lio/didomi/sdk/X4;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()Z
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->V()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->O()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/didomi/sdk/a5;->t:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->T()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->M()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/didomi/sdk/a5;->u:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0
.end method

.method public final p0()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "disabled_save_button_description"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "accept_data_processing"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q(Lio/didomi/sdk/models/InternalPurpose;)Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->h()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result p1

    return p1
.end method

.method public final q0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    iget-object v1, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g;->b()Lio/didomi/sdk/k$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->g()Ljava/util/Map;

    move-result-object v1

    const-string v2, "save_11a80ec3"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q1()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$g;->a()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lio/didomi/sdk/a5;->c:Lio/didomi/sdk/V;

    invoke-virtual {v0}, Lio/didomi/sdk/V;->k()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public final r()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "close"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final r(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->c(Lio/didomi/sdk/models/InternalPurpose;)V

    new-instance v0, Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/didomi/sdk/events/PreferencesClickPurposeDisagreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    return-void
.end method

.method public final r0()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "disable_buttons_until_scroll_indicator"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "close_purpose_view"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final s(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/a5;->f(Lio/didomi/sdk/models/InternalPurpose;)V

    new-instance v0, Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/didomi/sdk/events/PreferencesClickPurposeAgreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    return-void
.end method

.method public final s0()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->x:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final s1()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final t0()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->E:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final t1()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->getDescriptionLegal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public final u()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "consent_management"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final u0()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->w:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final u1()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5;->b:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/l;->b(Lio/didomi/sdk/k;)Z

    move-result v0

    return v0
.end method

.method public final v(Lio/didomi/sdk/models/InternalPurpose;)Z
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->isConsentNotEssential()Z

    move-result p1

    return p1
.end method

.method public final v0()Lio/didomi/sdk/a;
    .registers 12

    iget-object v0, p0, Lio/didomi/sdk/a5;->C:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-nez v0, :cond_c

    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    new-instance v10, Lio/didomi/sdk/a;

    iget-object v1, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    const-string v2, "consent"

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lio/didomi/sdk/a5;->t()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0}, Lio/didomi/sdk/a5;->B()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/didomi/sdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;ILkotlin/jvm/internal/n;)V

    return-object v10
.end method

.method public final v1()Z
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->s1()Z

    move-result v0

    return v0
.end method

.method public final w(Lio/didomi/sdk/models/InternalPurpose;)Z
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterestNotEssential()Z

    move-result p1

    return p1
.end method

.method public final w0()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->C:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final w1()Z
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->L()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lio/didomi/sdk/a5;->A:Z

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->p()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->X0()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public final x()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "save_data_processing_choices"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x(Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/G8;->e(Lio/didomi/sdk/models/InternalPurpose;)V

    return-void
.end method

.method public final x0()Lio/didomi/sdk/a;
    .registers 13

    iget-object v0, p0, Lio/didomi/sdk/a5;->D:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-nez v0, :cond_c

    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :cond_c
    const-string v1, "selectedPurposeLegIntSta\u2026idomiToggle.State.ENABLED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-ne v0, v1, :cond_17

    move-object v1, v0

    goto :goto_19

    :cond_17
    sget-object v1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_19
    new-instance v11, Lio/didomi/sdk/a;

    iget-object v2, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    const-string v3, "legitimate_interest"

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lio/didomi/sdk/a5;->v()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0}, Lio/didomi/sdk/a5;->B()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lio/didomi/sdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;ILkotlin/jvm/internal/n;)V

    return-object v11
.end method

.method public final x1()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/a5;->g:Lio/didomi/sdk/G8;

    iget-object v1, p0, Lio/didomi/sdk/a5;->c:Lio/didomi/sdk/V;

    invoke-virtual {v1}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/a5;->j:Lio/didomi/sdk/V8;

    invoke-static {v0, v1, v2}, Lio/didomi/sdk/H8;->a(Lio/didomi/sdk/G8;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/V8;)V

    return-void
.end method

.method public final y()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/a5;->f:Lio/didomi/sdk/v3;

    const-string v1, "save_vendor_and_back_to_purpose"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y0()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/a5;->D:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public z1()V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/a5;->y1()V

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->l1()V

    return-void
.end method
