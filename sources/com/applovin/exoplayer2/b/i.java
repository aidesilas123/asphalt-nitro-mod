package com.applovin.exoplayer2.b;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
final class i {
    private int Z;

    @Nullable
    private final a jX;
    private long jY;
    private long jZ;
    private long ka;
    private long kb;

    @RequiresApi(19)
    private static final class a {
        private final AudioTrack kc;
        private final AudioTimestamp kd = new AudioTimestamp();
        private long ke;
        private long kf;
        private long kg;

        public a(AudioTrack audioTrack) {
            this.kc = audioTrack;
        }

        public long dV() {
            return this.kd.nanoTime / 1000;
        }

        public long dW() {
            return this.kg;
        }

        public boolean dX() {
            boolean timestamp = this.kc.getTimestamp(this.kd);
            if (timestamp) {
                long j = this.kd.framePosition;
                if (this.kf > j) {
                    this.ke++;
                }
                this.kf = j;
                this.kg = j + (this.ke << 32);
            }
            return timestamp;
        }
    }

    public i(AudioTrack audioTrack) {
        if (ai.acV >= 19) {
            this.jX = new a(audioTrack);
            Y();
        } else {
            this.jX = null;
            ax(3);
        }
    }

    private void ax(int i) {
        this.Z = i;
        if (i == 0) {
            this.ka = 0L;
            this.kb = -1L;
            this.jY = System.nanoTime() / 1000;
            this.jZ = 10000L;
            return;
        }
        if (i == 1) {
            this.jZ = 10000L;
            return;
        }
        if (i == 2 || i == 3) {
            this.jZ = 10000000L;
        } else {
            if (i != 4) {
                throw new IllegalStateException();
            }
            this.jZ = 500000L;
        }
    }

    @TargetApi(19)
    public boolean G(long j) {
        a aVar = this.jX;
        if (aVar == null || j - this.ka < this.jZ) {
            return false;
        }
        this.ka = j;
        boolean zDX = aVar.dX();
        int i = this.Z;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (zDX) {
                        Y();
                    }
                } else if (!zDX) {
                    Y();
                }
            } else if (!zDX) {
                Y();
            } else if (this.jX.dW() > this.kb) {
                ax(2);
            }
        } else if (zDX) {
            if (this.jX.dV() < this.jY) {
                return false;
            }
            this.kb = this.jX.dW();
            ax(1);
        } else if (j - this.jY > 500000) {
            ax(3);
        }
        return zDX;
    }

    public void Y() {
        if (this.jX != null) {
            ax(0);
        }
    }

    public void dS() {
        ax(4);
    }

    public void dT() {
        if (this.Z == 4) {
            Y();
        }
    }

    public boolean dU() {
        return this.Z == 2;
    }

    @TargetApi(19)
    public long dV() {
        a aVar = this.jX;
        return aVar != null ? aVar.dV() : C.TIME_UNSET;
    }

    @TargetApi(19)
    public long dW() {
        a aVar = this.jX;
        if (aVar != null) {
            return aVar.dW();
        }
        return -1L;
    }
}
