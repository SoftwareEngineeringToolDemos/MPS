package jetbrains.mps.make.script;

/*Generated by MPS */


public interface IConfigMonitor extends IJobMonitor {
  public <T extends IOption> T relayQuery(IQuery<T> query);
  public static class Stub extends IJobMonitor.Stub implements IConfigMonitor {
    public Stub() {
      super(new IProgress.Stub());
    }
    public Stub(IProgress pro) {
      super(pro);
    }
    @Override
    public <T extends IOption> T relayQuery(IQuery<T> query) {
      return null;
    }
  }
}
