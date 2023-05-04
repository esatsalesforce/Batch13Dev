public class DeleteCoursesBatchScheduler implements Schedulable {

    public void execute(SchedulableContext context) {
        // Schedule the batch to run every day at 3:00 AM
        String jobName = 'PurgeCoursesBatch-' + Datetime.now().format('yyyyMMddhhmmss');
        String cronExpression = '0 0 3 * * ?';
        Integer batchSize = 200; // Set the batch size to 200 records
        PurgeCoursesBatchHandler batchHandler = new PurgeCoursesBatchHandler();
        Database.executeBatch(batchHandler, batchSize);
        System.schedule(jobName, cronExpression, batchHandler);
       
    }
}